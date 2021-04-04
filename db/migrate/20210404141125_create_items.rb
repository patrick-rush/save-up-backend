class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :link
      t.integer :price
      t.string :priority
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
