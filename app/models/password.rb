class Password < ApplicationRecord
    has_many :user_passwords
    has_many :user, through: :user_passwords

    encrypts :username, deterministic: true      # Add this line
    encrypts :password                           # Add this line
end
