class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :url
      t.string :title
      t.text   :roles, array: true, default: []

      t.timestamps null: false
    end
  end
end
