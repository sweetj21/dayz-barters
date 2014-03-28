json.array!(@offers) do |offer|
  json.extract! offer, :id, :trade_id, :offered, :purchaser_id, :threat_level, :accepted
  json.url offer_url(offer, format: :json)
end
