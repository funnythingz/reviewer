class ClinicsController < ApplicationController
  before_action :set_clinic, only: [:show]

  # GET /clinics
  # GET /clinics.json
  def index
    @clinics = Clinic.all.page(params[:page])
  end

  # GET /clinics/1
  def show
    @errors = flash[:errors]

    if params[:sort] == 'bad'
      @reviews = @clinic.review.published.bad.desc.page(params[:page])
    else
      @reviews = @clinic.review.published.good.desc.page(params[:page])
    end
  end

  private
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end
end
