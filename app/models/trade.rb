class Trade < ActiveRecord::Base
  belongs_to :user, foreign_key: "poster_id", class_name: "User"
end
