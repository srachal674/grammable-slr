FactoryBot.define do
  factory :comment do
    
  end

    factory :user do
      sequence :email do |n|
        "dummyEmail#{n}@gmail.com"
      end
      password { "secretPassword" }
      password_confirmation { "secretPassword" }
    end

    factory :gram do
      message {"hello"}
      photos { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'testpic.png').to_s, 'image/png') }

      association :user
    end
end