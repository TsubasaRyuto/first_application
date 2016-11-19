class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :graduating_class, null: false
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name, null: false
      t.string :nickname, null: false
      t.string :email, null: false
      t.string :gender, null: false
      t.string :url
      t.string :image_url
      t.string :birthplace
      t.string :industry
      t.string :company
      t.text :useful_things
      t.text :note

      t.timestamps
      t.index [:uid], unique: true
    end
  end
end
