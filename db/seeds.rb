# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hammad = User.create! :email => 'hammadpatel@gmail.com', :password => 'hammad123', :password_confirmation => 'hammad123', :program_choice1 => 'Computer Science', :pprogram_choice2 => 'BBA', :first_name => 'Hammad', :middle_name => 'Munawar', :last_name => 'Patel', :nic => '13144-11313-9', :country => 'Pakistan', :test_center => 'Karachi'
ali = User.create! :email => 'ali@gmail.com', :password => 'ali123', :password_confirmation => 'ali123', :program_choice1 => 'BBA', :pprogram_choice2 => 'Enconomics', :first_name => 'Ali', :middle_name => 'Shahzad', :last_name => 'Siddique', :nic => '23232-11313-9', :country => 'Pakistan', :test_center => 'Karachi'
zain = User.create! :email => 'zain@gmail.com', :password => 'zain123', :password_confirmation => 'zain123', :program_choice1 => 'BBA', :pprogram_choice2 => 'Enconomics', :first_name => 'Zain', :middle_name => 'Yasir', :last_name => 'Shah', :nic => '23232-11313-9', :country => 'Pakistan', :test_center => 'Karachi'
Basicinfo.create(user_id: hammad.id, alternate_email: "hammad@gmail.com", date_of_birth: "21/12/92", place_of_birth: "Karachi", nationality: "Pakistani", gender: "Male", telephone_res: "0212324345", telephone_off: "021131414", cell_no: "034529539430", postal_address: "Flat502,Plot134,House32", city: "Karachi", fathers_first_name: "Munawar", fathers_last_name: "Patel", fathers_nic: "24252-131141-5", fathers_mobile_no: "03425342425")

Acedemicrecord.create(user_id: hammad.id, matriculation_olevel: "Matriculation", name_of_school: "The Karachi Academy", school_name_of_board: "Sindh", school_year_of_passing: "2012", school_Discipline: "fsf", school_Subjects: "Science", school_Grades: "A", Intermediate_ALevel: "Inter",name_of_school_College: "Commecs", college_name_of_board: "Sindh", college_year_of_passing: "2014", college_Discipline: "fsafa", college_Subjects: "Pre-Engineering", college_Grades: "A")
Supporter.create(user_id: hammad.id, supported_by: "Father", supporters_firstname: "Munawar", supporters_lastname: "Patel", relationship_with_applicant: "Father", supporter_profession: "Business", supporter_designation: "HR", supporter_contactno: "0324225667", supporter_email: "munawar@gmail.com", supporter_cnic: "355-4252526-2", organization_where_employed: "Abcafa", organization_address: "Site,Karachi")
Testscore.create(user_id: hammad.id, test_score: 75)

Basicinfo.create(user_id: ali.id, alternate_email: "ali2@gmail.com", date_of_birth: "1/1/94", place_of_birth: "Karachi", nationality: "Pakistani", gender: "Male", telephone_res: "0212324345", telephone_off: "021131414", cell_no: "034529539430", postal_address: "Flat502,Plot134,House35", city: "Karachi", fathers_first_name: "Shahzad", fathers_last_name: "Siddique", fathers_nic: "2256-131141-5", fathers_mobile_no: "03425342425")
Acedemicrecord.create(user_id: ali.id, matriculation_olevel: "Olevel", name_of_school: "Beacon House", school_name_of_board: "Cambridge", school_year_of_passing: "2012", school_Discipline: "fsf", school_Subjects: "Commerce", school_Grades: "A", Intermediate_ALevel: "Inter",name_of_school_College: "Lyceam", college_name_of_board: "Cambridge", college_year_of_passing: "2014", college_Discipline: "fsafa", college_Subjects: "Busines Commerce", college_Grades: "A")
Supporter.create(user_id: ali.id, supported_by: "Father", supporters_firstname: "Shahzad", supporters_lastname: "Siddique", relationship_with_applicant: "Father", supporter_profession: "Business", supporter_designation: "HR", supporter_contactno: "0324225667", supporter_email: "munawar@gmail.com", supporter_cnic: "355-4252526-2", organization_where_employed: "Abcafa", organization_address: "Site,Karachi")
Testscore.create(user_id: ali.id, test_score: 82)

Basicinfo.create(user_id: zain.id, alternate_email: "zain2@gmail.com", date_of_birth: "1/1/94", place_of_birth: "Karachi", nationality: "Pakistani", gender: "Male", telephone_res: "0212324345", telephone_off: "021131414", cell_no: "034529539430", postal_address: "Flat502,Plot134,House35", city: "Karachi", fathers_first_name: "Shahzad", fathers_last_name: "Siddique", fathers_nic: "2256-131141-5", fathers_mobile_no: "03425342425")
Acedemicrecord.create(user_id: zain.id, matriculation_olevel: "Olevel", name_of_school: "Beacon House", school_name_of_board: "Cambridge", school_year_of_passing: "2012", school_Discipline: "fsf", school_Subjects: "Commerce", school_Grades: "A", Intermediate_ALevel: "Inter",name_of_school_College: "Lyceam", college_name_of_board: "Cambridge", college_year_of_passing: "2014", college_Discipline: "fsafa", college_Subjects: "Busines Commerce", college_Grades: "A")
Supporter.create(user_id: zain.id, supported_by: "Father", supporters_firstname: "Yasir", supporters_lastname: "Shah", relationship_with_applicant: "Father", supporter_profession: "Business", supporter_designation: "HR", supporter_contactno: "0324225667", supporter_email: "munawar@gmail.com", supporter_cnic: "355-4252526-2", organization_where_employed: "Abcafa", organization_address: "Site,Karachi")
Testscore.create(user_id: zain.id, test_score: 78)