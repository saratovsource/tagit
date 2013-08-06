class AddOwnerFieldToLink < ActiveRecord::Migration
  def change
    change_table :links do |t|
      t.references  :account, index: true
    end
  end
end
