# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :contact_number
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
