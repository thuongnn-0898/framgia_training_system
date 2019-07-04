class User < ApplicationRecord
  scope :by_role, -> {order role: :asc}

  has_secure_password
end
