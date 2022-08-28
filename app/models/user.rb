class User < ApplicationRecord
    # don't allow a User.create to proceed when email field is left blank
    validates :email, presence: true

    # ----------------------------> password_digest:'r6vy3497fr821y'
    has_secure_password


    has_many :dishes

    has_many :comments, dependent: :destroy
                        #^ if i delete dish, delete all comments
    
end
