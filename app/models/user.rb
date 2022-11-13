class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :num_licence, presence: true, uniqueness: true, length: { is: 8, message: "Le numéro de licence doit comporter 8 chiffres" }

end
