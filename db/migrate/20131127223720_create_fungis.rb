class CreateFungis < ActiveRecord::Migration
  def change
    create_table :fungis do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
