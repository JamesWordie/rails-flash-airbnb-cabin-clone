class AddUserToCabins < ActiveRecord::Migration[6.1]
  def change
    add_reference :cabins, :user, null: false, foreign_key: true
  end
end
