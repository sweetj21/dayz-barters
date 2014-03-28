class FixTraceCommentName < ActiveRecord::Migration
  def self.up
    rename_column :trades, :trace_comments, :trade_comments
  end
  def self.down
    rename_column :trades, :trade_comments, :trace_comments
  end
end
