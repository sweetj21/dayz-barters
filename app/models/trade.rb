class Trade < ActiveRecord::Base
  belongs_to :poster, foreign_key: "poster_id", class_name: "User"
  belongs_to :purchaser, foreign_key: "purchaser_id", class_name: "User"
  has_many :offers, class_name: "Offer"

  serialize :offered
  serialize :requested
  serialize :received
end
