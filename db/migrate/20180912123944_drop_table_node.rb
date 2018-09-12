class DropTableNode < ActiveRecord::Migration[5.2]
  def change
    drop_table :nodes
  end
end
