class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :surname
      t.string :email
      t.date :birthday
      t.integer :height_in_cm
      t.integer :weight_in_kg
      t.string :gender

      t.timestamps
    end
  end
end
