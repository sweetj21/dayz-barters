require 'test_helper'

class TradesControllerTest < ActionController::TestCase
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trade" do
    assert_difference('Trade.count') do
      post :create, trade: { accepted: @trade.accepted, completed: @trade.completed, location: @trade.location, meeting_time: @trade.meeting_time, notes: @trade.notes, offered: @trade.offered, poster_id: @trade.poster_id, purchaser_id: @trade.purchaser_id, received: @trade.received, requested: @trade.requested, server: @trade.server, strict_trade: @trade.strict_trade, threat_level: @trade.threat_level, trace_comments: @trade.trace_comments, urban: @trade.urban }
    end

    assert_redirected_to trade_path(assigns(:trade))
  end

  test "should show trade" do
    get :show, id: @trade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trade
    assert_response :success
  end

  test "should update trade" do
    patch :update, id: @trade, trade: { accepted: @trade.accepted, completed: @trade.completed, location: @trade.location, meeting_time: @trade.meeting_time, notes: @trade.notes, offered: @trade.offered, poster_id: @trade.poster_id, purchaser_id: @trade.purchaser_id, received: @trade.received, requested: @trade.requested, server: @trade.server, strict_trade: @trade.strict_trade, threat_level: @trade.threat_level, trace_comments: @trade.trace_comments, urban: @trade.urban }
    assert_redirected_to trade_path(assigns(:trade))
  end

  test "should destroy trade" do
    assert_difference('Trade.count', -1) do
      delete :destroy, id: @trade
    end

    assert_redirected_to trades_path
  end
end
