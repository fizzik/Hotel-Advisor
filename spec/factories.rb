FactoryGirl.define do
  factory :user do
    name     "Zhenya Petrov"
    email    "zhenya@petrov.ua"
    password "password"
    password_confirmation "password"
  end

  factory :comment do
    body "some text"
    user
  end
end