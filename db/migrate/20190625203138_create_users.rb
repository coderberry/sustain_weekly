class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :uid, null: false
      t.string :email, null: false
      t.string :name
      t.string :avatar_url
      t.string :mailchimp_id
      t.string :newsletter_status

      t.index :uid, unique: true
      t.index :username, unique: true
      t.index :email, unique: true
      t.index :mailchimp_id

      t.timestamps
    end
  end
end
