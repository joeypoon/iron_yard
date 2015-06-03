class AddDatePaidThroughToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_paid_through, :date
  end
end
