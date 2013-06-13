class CreateAuthenticationProviderBases < ActiveRecord::Migration
  def change
    create_table :authentication_provider_bases do |t|
      t.references :account, index: true
      t.string :slug
      t.string :state
      t.text :info
      t.text :extra

      t.timestamps
    end
  end
end
