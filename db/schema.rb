# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150521182513) do

  create_table "acedemicrecords", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "matriculation_olevel"
    t.string   "name_of_school"
    t.string   "school_name_of_board"
    t.string   "school_year_of_passing"
    t.string   "school_Discipline"
    t.string   "school_Subjects"
    t.string   "school_Grades"
    t.string   "Intermediate_ALevel"
    t.string   "name_of_school_College"
    t.string   "college_name_of_board"
    t.string   "college_year_of_passing"
    t.string   "college_Discipline"
    t.string   "college_Subjects"
    t.string   "college_Grades"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "basicinfos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "alternate_email"
    t.string   "date_of_birth"
    t.string   "place_of_birth"
    t.string   "nationality"
    t.string   "gender"
    t.string   "telephone_res"
    t.string   "telephone_off"
    t.string   "cell_no"
    t.string   "postal_address"
    t.string   "city"
    t.string   "fathers_first_name"
    t.string   "fathers_last_name"
    t.string   "fathers_nic"
    t.string   "fathers_mobile_no"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "moreinfos", force: :cascade do |t|
    t.string   "Have_you_studied_at_KU_before?"
    t.string   "Please_list_all_awards_scholastic_honors_scholarships_publications_activities_and_other_achievements"
    t.string   "Extra_curricular_activities_hobbies"
    t.string   "Have_you_ever_been_convicted_by_a_court_of_law_or_sentenced_to_a_prison_if_Yes_then_provide_details"
    t.string   "Have_you_received_psychiatric_treatment_of_any_kind_in_the_past_If_Yes_then_provide_details"
    t.integer  "user_id"
    t.datetime "created_at",                                                                                           null: false
    t.datetime "updated_at",                                                                                           null: false
  end

  create_table "supporters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "supported_by"
    t.string   "supporters_firstname"
    t.string   "supporters_lastname"
    t.string   "relationship_with_applicant"
    t.string   "supporter_profession"
    t.string   "supporter_designation"
    t.string   "supporter_contactno"
    t.string   "supporter_email"
    t.string   "supporter_cnic"
    t.string   "organization_where_employed"
    t.string   "organization_address"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "testscores", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "test_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "program_choice1"
    t.string   "pprogram_choice2"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "nic"
    t.string   "country"
    t.string   "test_center"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
