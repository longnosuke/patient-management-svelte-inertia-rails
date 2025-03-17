# frozen_string_literal: true

# == Schema Information
#
# Table name: patients
#
#  id             :bigint           not null, primary key
#  address        :text
#  contact_number :string
#  date_of_birth  :date
#  email          :string
#  first_name     :string
#  last_name      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    date_of_birth { "2025-03-17" }
    contact_number { "MyString" }
    email { "MyString" }
    address { "MyText" }
  end
end
