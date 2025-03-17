# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    render inertia: "Patients",
      props: {
        patients: Patient.all
      }
  end

  def show
    render inertia: "Patient",
      props: {
        patient: Patient.find(params[:id])
      }
  end
end
