class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string      :uri
      t.string      :state

      t.timestamps
    end
  end
end
