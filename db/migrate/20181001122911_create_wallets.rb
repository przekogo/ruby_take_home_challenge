class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :address
      t.integer :transactions
      t.integer :balance, limit: 8
    end

    create_table :user_wallets do |t|
      t.integer :wallet_id
      t.integer :user_id
      t.timestamps
      t.index :wallet_id
      t.index :user_id
      t.index [:wallet_id, :user_id], unique: true
    end
  end
end
