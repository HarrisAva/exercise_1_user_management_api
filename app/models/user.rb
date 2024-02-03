class User < ApplicationRecord

    before_save do
        self.email.downcase! if self.email
    end

    validates :full_name, presence: true, length: {minimum: 3, maximum: 50}
    validates :email, presence: true, uniqueness: true, length: {minimum: 5, maximum: 255}
    # , format: {with: EMAIL_REGEXP.match?}
    validates :age, presence: true, :numericality => { greater_than_or_equal_to: 18, less_than: 100}

end
