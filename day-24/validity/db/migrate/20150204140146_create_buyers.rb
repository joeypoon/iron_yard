class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
