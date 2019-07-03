class User < ApplicationRecord
  has_many :course_users, dependent: :destroy
  has_many :course_subjects, dependent: :destroy
end
