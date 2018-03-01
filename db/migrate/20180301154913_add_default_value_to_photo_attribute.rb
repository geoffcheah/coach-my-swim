class AddDefaultValueToPhotoAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :photo, :string, default: "profile_default"
  end
end
