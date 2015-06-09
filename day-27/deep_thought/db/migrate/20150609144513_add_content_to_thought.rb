class AddContentToThought < ActiveRecord::Migration
  def change
    add_column :thoughts, :content, :text
  end
end
