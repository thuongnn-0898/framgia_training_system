class SubjectUser < ApplicationRecord
  belongs_to :course_user
  belongs_to :course_subject
end
