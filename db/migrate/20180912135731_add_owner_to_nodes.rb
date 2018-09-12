class AddOwnerToNodes < ActiveRecord::Migration[5.2]
  def change
    add_reference :nodes, :owner, foreign_key: true
  end
end
