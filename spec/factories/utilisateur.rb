require 'factory_bot'

FactoryBot.define do
  factory :utilisateur do
    email {"test@user.com"}
    password {"qwerty"}
  end
end
