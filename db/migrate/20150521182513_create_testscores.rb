class CreateTestscores < ActiveRecord::Migration
  def change
    create_table :testscores do |t|
    	t.references :user
    	t.float :test_score

      t.timestamps null: false
    end
  end
end
