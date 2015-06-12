class CreateAcedemicrecords < ActiveRecord::Migration
  def change
    create_table :acedemicrecords do |t|
t.references :user

      t.string :matriculation_olevel
      t.string :name_of_school
t.string :school_name_of_board
t.string :school_year_of_passing
t.string :school_Discipline
t.string :school_Subjects
t.string :school_Grades
t.string :Intermediate_ALevel
t.string :name_of_school_College
t.string :college_name_of_board
t.string :college_year_of_passing
t.string :college_Discipline
t.string :college_Subjects
t.string :college_Grades

      t.timestamps null: false
    end
  end
end


