class AddProviderInfoField < ActiveRecord::Migration
  def change
    change_table :authentication_provider_bases do |t|
      t.hstore :info
      t.hstore :extra
      t.hstore :credentials
    end
  end
end
