class ProgressUserTask < ApplicationRecord
  belongs_to :subject_user
  belongs_to :subject_task
end
