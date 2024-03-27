class User < ApplicationRecord
  has_secure_password

  validates :name, presence:true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :date_of_birth, presence: true

end
