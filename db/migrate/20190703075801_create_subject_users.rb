class CreateSubjectUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_users do |t|
      t.references :course_user, foreign_key: true
      t.references :course_subject, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
