class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user
      t.string :user_location
      t.integer :stars
      t.boolean :pick
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
