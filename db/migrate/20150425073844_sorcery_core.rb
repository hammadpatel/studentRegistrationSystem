class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :program_choice1
      t.string :pprogram_choice2
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :nic
      t.string :country
      t.string :test_center
      




      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end