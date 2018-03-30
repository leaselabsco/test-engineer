module Errors
	class ApiError < StandardError

  class CategoriesNotFoundError < ApiError
  	def initialize(msg, data=nil)

  	end
  end

  class GameNotFoundError < ApiError
  	def initialize(msg, data=nil)
  		
  	end
  end
end