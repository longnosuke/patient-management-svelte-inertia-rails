# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    render inertia: "Patient"
  end
end
