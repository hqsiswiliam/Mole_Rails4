class AddImageToOrganisations < ActiveRecord::Migration
  def change
    add_column :organisations, :image, :string
  end
end
