class CreateBasicinfos < ActiveRecord::Migration
  def change
    create_table :basicinfos do |t|
t.references :user
t.string :alternate_email
      t.string :date_of_birth
      t.string :place_of_birth
      t.string :nationality
      t.string :gender
      t.string :telephone_res
      t.string :telephone_off
      t.string :cell_no
      t.string :postal_address
      t.string :city
      t.string :fathers_first_name
      t.string :fathers_last_name
      t.string :fathers_nic
      t.string :fathers_mobile_no
      t.timestamps null: false
    end
  end
end
