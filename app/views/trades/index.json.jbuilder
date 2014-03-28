json.array!(@trades) do |trade|
  json.extract! trade, :id, :poster_id, :purchaser_id, :location, :urban, :strict_trade, :server, :meeting_time, :notes, :threat_level, :offered, :requested, :received, :accepted, :completed, :trace_comments
  json.url trade_url(trade, format: :json)
end
