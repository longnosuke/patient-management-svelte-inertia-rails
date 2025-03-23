# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    render inertia: {
      patients: Patient.all
    }
  end

  def show
    render inertia: {
      patient: Patient.find(params[:id])
    }
  end
end
