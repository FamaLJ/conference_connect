class CreateBreakoutsessions < ActiveRecord::Migration
  def change
    create_table :breakoutsessions do |t|
      t.text :speakerbio
      t.string :image_url
      t.text :breakoutname
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :speaker

      t.timestamps

    end
  end
end
