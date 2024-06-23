class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true
    normalizes :email, ->(email) {email.strip.downcase}
end
