class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
t.references :user

      t.string :supported_by
      t.string :supporters_firstname
t.string :supporters_lastname
t.string :relationship_with_applicant
t.string :supporter_profession
t.string :supporter_designation
t.string :supporter_contactno
t.string :supporter_email
t.string :supporter_cnic
t.string :organization_where_employed
t.string :organization_address
      t.timestamps null: false
    end
  end
end


