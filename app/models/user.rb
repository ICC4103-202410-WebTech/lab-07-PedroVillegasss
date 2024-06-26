# https://guides.rubyonrails.org/active_record_validations.html#when-does-validation-happen-questionmark:~:text=class%20EmailValidator%20%3C%20ActiveModel%3A%3AEachValidator%0A%20%20def%20validate_each(record%2C%20attribute%2C%20value)%0A%20%20%20%20unless%20URI%3A%3AMailTo%3A%3AEMAIL_REGEXP.match%3F(value)%0A%20%20%20%20%20%20record.errors.add%20attribute%2C%20(options%5B%3Amessage%5D%20%7C%7C%20%22is%20not%20an%20email%22)%0A%20%20%20%20end%0A%20%20end%0Aend

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless URI::MailTo::EMAIL_REGEXP.match?(value)
      record.errors.add attribute, (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: { message: "The user should have a name" }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "The user should have a valid email" }
  validates :password, presence: true, length: { minimum: 6, message: "The user's password should have a minimum length of 6 characters" }
end
