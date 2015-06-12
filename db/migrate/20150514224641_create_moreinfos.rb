class CreateMoreinfos < ActiveRecord::Migration
  def change
    create_table :moreinfos do |t|
      t.string :Have_you_studied_at_KU_before?
t.string :Please_list_all_awards_scholastic_honors_scholarships_publications_activities_and_other_achievements
t.string :Extra_curricular_activities_hobbies
t.string :Have_you_ever_been_convicted_by_a_court_of_law_or_sentenced_to_a_prison_if_Yes_then_provide_details
t.string :Have_you_received_psychiatric_treatment_of_any_kind_in_the_past_If_Yes_then_provide_details
t.references :user

      t.timestamps null: false
    end
  end
end

