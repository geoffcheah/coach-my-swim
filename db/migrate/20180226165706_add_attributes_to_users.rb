class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :swimmer, :boolean, default: true
    add_column :users, :coach, :boolean, default: false
  end
end
