class RenamePaidThroughInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :date_paid_through, :paid_through
  end
end
