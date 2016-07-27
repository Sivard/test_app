class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :link
      t.text :roles, array: true, default: []

      t.timestamps null: false
    end
  end
end
