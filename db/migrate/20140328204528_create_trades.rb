class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :poster_id
      t.integer :purchaser_id
      t.string :location
      t.boolean :urban
      t.boolean :strict_trade
      t.string :server
      t.datetime :meeting_time
      t.text :notes
      t.integer :threat_level
      t.text :offered
      t.text :requested
      t.text :received
      t.boolean :accepted
      t.boolean :completed
      t.text :trace_comments

      t.timestamps
    end
  end
end
