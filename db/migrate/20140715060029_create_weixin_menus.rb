class CreateWeixinMenus < ActiveRecord::Migration
  def change
    create_table :weixin_menus do |t|
      t.string  :name
      t.integer :weixin_account_id
      t.integer :parent_id
      t.string  :key
      t.string  :url
      t.boolean :enable
      t.integer :position

      t.timestamps
    end

    add_index :weixin_menus, :weixin_account_id
    add_index :weixin_menus, :parent_id
    add_index :weixin_menus, :key

  end
end
