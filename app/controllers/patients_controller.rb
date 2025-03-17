# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    render inertia: "Patients",
      props: {
        patients: Patient.all
      }
  end

  end
end
