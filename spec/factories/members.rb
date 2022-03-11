FactoryBot.define do
  factory :member do
    name { tarou }
    email { sample @test.com }
    introduction { test }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
