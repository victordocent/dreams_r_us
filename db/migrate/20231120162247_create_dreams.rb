class CreateDreams < ActiveRecord::Migration[7.1]
  def change
    create_table :dreams do |t|
      t.string :title
      t.float :price
      t.boolean :availability
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
