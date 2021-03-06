class AddDeviseToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :encrypted_password, null: false, default: ""
			t.string :authentication_token
    end
		add_index :users, [:authentication_token]
	end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
