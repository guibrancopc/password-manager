class UserPassword < ApplicationRecord
  # Owner: can view, edit and share the password
  # Editor: can update password
  # Viewer: can only view the passwoerd

  ROLES = %w{owner editor viewer}

  belongs_to :user
  belongs_to :password

  validates :role, presence: true, inclusion: { in: ROLES }
end
