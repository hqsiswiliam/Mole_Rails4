class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
