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
end
