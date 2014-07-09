class ChangeGenderToStringInItems < ActiveRecord::Migration
  def change
    change_column :items, :gender, :string
  end
end
