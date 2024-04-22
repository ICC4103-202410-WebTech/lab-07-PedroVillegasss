class AddUsersToPost < ActiveRecord::Migration[7.1]
  def change
    change_table :posts do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
