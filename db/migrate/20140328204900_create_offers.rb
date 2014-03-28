class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :trade_id
      t.text :offered
      t.integer :purchaser_id
      t.integer :threat_level
      t.boolean :accepted

      t.timestamps
    end
  end
end
