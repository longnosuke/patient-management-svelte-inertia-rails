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

  def new
    render inertia: {
      patient: Patient.new
    }
  end

  def edit
    render inertia: {patient: Patient.find(params[:id])}
  end

  def create
    patient = Patient.new(patient_params)
    if patient.save
      flash[:notice] = "Patient created successfully."
      redirect_to patient_path(patient)
    else
      flash[:alert] = "Failed to create patient."
      redirect_to new_patient_path, inertia: {errors: patient.errors}
    end
  end

  def update
    patient = Patient.find(params[:id])
    if patient.update(patient_params)
      flash[:notice] = "Patient updated successfully."
      redirect_to patient_path(patient)
    else
      flash[:alert] = "Failed to update patient."
      redirect_to edit_patient_path(patient), inertia: {errors: patient.errors}
    end
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
    flash[:notice] = "Patient deleted successfully."
    redirect_to patients_path
  end

  private

  def patient_params
    params.expect(patient: [:first_name, :last_name, :email, :contact_number, :address, :date_of_birth])
  end
end
