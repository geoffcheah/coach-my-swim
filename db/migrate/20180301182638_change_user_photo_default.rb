class ChangeUserPhotoDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :photo, :string, default: "http://res.cloudinary.com/dl8jzr6kn/image/upload/v1519835396/profile_default.png"
  end
end
