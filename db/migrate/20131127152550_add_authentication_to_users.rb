class AddAuthenticationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organisation, :boolean
    add_column :users, :event, :boolean
  end
end
