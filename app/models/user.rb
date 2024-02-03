class User < ApplicationRecord

    before_save do
        self.email.downcase! if self.email
    end

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :email, presence: true, uniqueness: true, length: {in: 5..255}
    # , format: {with: EMAIL_REGEXP.match?}

end
