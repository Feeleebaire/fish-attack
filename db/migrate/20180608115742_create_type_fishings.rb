class CreateTypeFishings < ActiveRecord::Migration[5.2]
  def change
    create_table :type_fishings do |t|
      t.string :name

      t.timestamps
    end
  end
end
