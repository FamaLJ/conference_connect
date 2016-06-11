class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.boolean :other
      t.boolean :industry
      t.boolean :job
      t.boolean :content
      t.integer :userenroll_id
      t.integer :breakoutenroll

      t.timestamps

    end
  end
end
