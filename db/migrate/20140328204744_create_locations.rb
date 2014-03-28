class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :coordinates
      t.string :external_link

      t.timestamps
    end
  end
end
