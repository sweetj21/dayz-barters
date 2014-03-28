class User < ActiveRecord::Base
  has_many :offers, foreign_key: "purchaser_id", :class_name => "Offer"
  has_many :trades, foreign_key: "poster_id", :class_name => "Trade"
  has_many :purchases, foreign_key: "purchaser_id", :class_name => "Trade"
end
