class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :title
      t.string :description
      t.string :image
      t.integer :views_count

      t.timestamps
    end
  end
end
