class Offer < ActiveRecord::Base
  belongs_to :purchaser, foreign_key: "purchaser_id", class_name: "User"
  belongs_to :trade, foreign_key: "trade_id", class_name: "Trade"

  serialize :offered
end
