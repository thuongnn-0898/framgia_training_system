class CreateCourseUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :course_users do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.integer :status
      t.datetime :date_start
      t.datetime :date_end
      t.integer :role

      t.timestamps
    end
  end
end
