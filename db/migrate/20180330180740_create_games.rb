class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.text :description
      t.string :author
      t.integer :status

      t.timestamps
    end
  end
end
