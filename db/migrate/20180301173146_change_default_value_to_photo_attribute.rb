class ChangeDefaultValueToPhotoAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :photo, :string, default: "http://res.cloudinary.com/diwpr3fha/image/upload/v1519924589/profile_default.png"
  end
end
