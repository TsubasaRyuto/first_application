class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :graduating_class
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name, null: false
      t.string :nickname
      t.string :email
      t.integer :gender
      t.string :url
      t.string :image_url
      t.integer :birthplace
      t.string :industry
      t.string :company
      t.text :useful_things
      t.text :note

      t.timestamps
      t.index [:provider, :uid], unique: true
    end
  end
end
