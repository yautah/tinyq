class CreateWeixinAccounts < ActiveRecord::Migration
  def change
    create_table :weixin_accounts do |t|
      t.string :name
      t.string :weixin_id
      t.string :weixin_secret_key
      t.string :weixin_token
      t.timestamps
    end

    add_index :weixin_accounts, :weixin_secret_key
    add_index :weixin_accounts, :weixin_token
  end
end
