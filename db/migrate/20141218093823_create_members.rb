class CreateMembers < ActiveRecord::Migration
  def change
     #insert = tussenvoegsel, dob = date of birth, adress = straatnaam, adressNr = huisnummer,membershipYear = jaar van lidwording
    create_table :members do |t|
      t.string :first_name, :null => false
      t.string :insert
      t.string :last_name, :null => false
      t.date :dob
      t.integer :phone
      t.string :adress
      t.integer :adressNr
      t.string :zipcode
      t.integer :membershipYear

      t.timestamps null: false
    end
  end
end
