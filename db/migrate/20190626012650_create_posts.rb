class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true

      t.string :title, null: false
      t.string :slug
      t.text :body, null: false
      t.string :status, null: false, default: "active"

      t.index :slug, unique: true

      t.timestamps
    end
  end
end
