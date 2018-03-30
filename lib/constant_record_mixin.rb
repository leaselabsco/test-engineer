# Offers a simple way to extend a class to support a new type of in memory data structure.
#
# On top of the method documented, some accessors get generated on the fly.
# The first type of accessors are find_by_* type accessors, where * is the column name.
#
#   Currency.find_by_country(:France)
#
# The second type is an accessor type to fetch all values of a column type.
# The method is simply the name of the column with the letter s postpended.
#
#   Currency.countries
#
# Example:
#   class Staff
#     extend ConstantRecordMixin
#     self.columns :name, :description
#     self.data [:me, 'Matt'], [:you, 'Pete'], [:him, 'Max'], [:her, 'Luisa'], [:them, 'E. and Josh']
#   end
#
#   Staff[:me] # => #<struct name=:me, description="Matt">
#   Staff.find_by_name(:me) # => #<struct name=:me, description="Matt">
#   Staff.find_by_name(:me).description # => 'Matt'
#   Staff.names.inspect #  => [:me, :you, :him, :her, :them]
#
# @api public
module ConstantRecordMixin

  class NoSuchConstant < StandardError; end

  # @overload columns
  #  Returns the columns defined for the extended class.
  #  @return [Array<Symbol, String>] The name of the column names.
  #
  # @overload columns(arr)
  #  Defines columns to create finders and accessors.
  #  @param [Array, #each] arr The names of the columns to set.
  #  @return [Array] The name of the column names.
  #  @example Defining the columns on a class extended by ConstantRecordMixin
  #    self.columns :name, :description
  #
  # @return [Array] The name of the column names.
  # @api public
  def columns(*arr)
    if arr.empty?
      @crm_columns
    else
      # This way of checking if the data passed is an Array type might be buggy
      if @crm_columns.nil?
        @crm_columns = (arr.respond_to?(:each) && arr.respond_to?(:join)) ? arr : [arr]
      elsif arr.respond_to?(:each) && arr.respond_to?(:join)
        @crm_columns.concat(arr)
      else
        @crm_columns << arr
      end
        # set or reset a cache for the mapped data
      @crm_mapped = {}
      def_column_finders(@crm_columns)
      def_column_accessors(@crm_columns)
      @crm_obj_klass = Struct.send(:new, *@crm_columns)
      @crm_columns
    end
  end

  # @overload data
  #  Returns the Struct objects related to the columns and data.
  #  @return [Array<Struct>, NilClass]
  #
  # @overload data(Array)
  #  Sets the Struct objects based on the defined coumns.
  #  @param [Array] val The value to associate with the columns.
  #  @example Setting the data for a classes extended by this module
  #    self.data [:me, 'Matt'], [:you, 'Pete'], [:him, 'Max'], [:her, 'Luisa'], [:them, 'E. and Josh']
  #  @return [Array<Struct>] The array of objects saved in memory.
  #
  # @return [Array<Struct>, NilClass] The array of objects saved in memory.
  # @api public
  def data(*val);
    if val.empty?
      @crm_data ||= []
    else
      raise unless @crm_columns && !@crm_columns.nil?
      @crm_data ||= []
      # reset cache data
      @crm_mapped = {}
      val.each{ |v| @crm_data << @crm_obj_klass.send(:new, *v) }
      @crm_data
    end
  end

  # Accessor to find a struct based on the value of its
  # first columns.
  #
  # @param [Symbol, String] val The value to match.
  # @raise [NoSuchConstant] In case the value to match isn't found.
  #
  # @return [Struct]
  # @api public
  def [](val)
    meth = columns.first
    result = data.find{|obj| obj.send(meth) == val}
    raise NoSuchConstant, "No such #{meth} constant with id=#{val}" unless result
    result
  end

  private

  # create finders methods
  def def_column_finders(cols)
    cols.each do |col|
      self.class_eval <<-EOS
        def self.find_by_#{col}(val)
          data.find{|obj| obj.#{col} == val} || raise(NoSuchConstant, "No such '#{col}' constant with id = '\#{val}'")
         end
     EOS
    end
  end

  def def_column_accessors(cols)
    cols.each do |col|
      self.class_eval "def self.#{col}s; @crm_mapped['#{col}'] ||= (data.map(&:#{col}) || []); end"
    end
  end

end
