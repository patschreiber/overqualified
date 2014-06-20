class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :gender
      t.string :brand
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
