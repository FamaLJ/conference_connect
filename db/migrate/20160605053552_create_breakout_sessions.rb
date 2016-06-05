class CreateBreakoutSessions < ActiveRecord::Migration
  def change
    create_table :breakout_sessions do |t|
      t.text :breakout_session_name
      t.text :description
      t.datetime :ends_at
      t.datetime :starts_at
      t.string :speaker

      t.timestamps

    end
  end
end
