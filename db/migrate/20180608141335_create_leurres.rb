class CreateLeurres < ActiveRecord::Migration[5.2]
  def change
    create_table :leurres do |t|
      t.references :leurre_type, foreign_key: true
      t.references :type_fish, foreign_key: true
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
