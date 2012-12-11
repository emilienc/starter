class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :user_id
      t.string :image_url
      t.integer :taille
      t.date :birthday
      t.string :gender

      t.timestamps
    end
  end
end
