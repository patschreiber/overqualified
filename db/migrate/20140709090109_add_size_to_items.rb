class AddSizeToItems < ActiveRecord::Migration
  def change
    add_column :items, :size, :string, :after => :gender
    add_index :items, :size
  end
end
