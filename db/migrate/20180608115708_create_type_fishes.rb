class CreateTypeFishes < ActiveRecord::Migration[5.2]
  def change
    create_table :type_fishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
