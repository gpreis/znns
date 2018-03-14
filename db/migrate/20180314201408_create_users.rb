class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name,     null: false, index: true
      t.string :username, null: false, index: true
      t.date :birthday,   null: false
      t.integer :sex,     null: false
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
