class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
