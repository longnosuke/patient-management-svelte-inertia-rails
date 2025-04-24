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
class Patient < ApplicationRecord
  validates :first_name, :last_name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :contact_number, presence: true, format: {with: /\A\d{10}\z/, message: "must be 11"}
  validates :date_of_birth, presence: true
  validates :address, presence: true, length: {maximum: 255}
end
