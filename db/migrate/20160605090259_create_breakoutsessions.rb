class CreateBreakoutsessions < ActiveRecord::Migration
  def change
    create_table :breakoutsessions do |t|
      t.text :breakout
      t.text :description
      t.datetime :ends_at
      t.datetime :starts_at
      t.text :speaker

      t.timestamps

    end
  end
end
