class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :loots, :type, :loot_type
  end

  def self.down
    rename_column :loots, :loot_type, :type
  end
end
