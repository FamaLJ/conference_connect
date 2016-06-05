class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.boolean :other
      t.boolean :industry_interest
      t.boolean :job_opportunities
      t.boolean :speaker_connection
      t.integer :user_id
      t.integer :breakout_session_id

      t.timestamps

    end
  end
end
