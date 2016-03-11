class CreateSuscriptions < ActiveRecord::Migration
  def change
    create_table :suscriptions do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.text :comment

      t.timestamps null: false
    end
  end
end
