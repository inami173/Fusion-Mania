class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :grade
      t.string :name
      t.integer :gender
      t.date :birthday
      t.string :part
      t.string :department
      t.string :inst
      t.text :favorite
      t.text :contact
      t.boolean :admin

      t.timestamps
    end
  end
end
