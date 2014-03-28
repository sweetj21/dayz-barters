class CreateLoots < ActiveRecord::Migration
  def change
    create_table :loots do |t|
      t.string :name
      t.string :type
      t.boolean :stackable
      t.boolean :experimental
      t.string :external_link

      t.timestamps
    end
  end
end
