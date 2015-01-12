class TargetsController < ApplicationController
  before_action :set_target, only: [:show]

  # GET /targets
  # GET /targets.json
  def index
    @targets = Target.all.page(params[:page])
  end

  # GET /targets/1
  def show
    @errors = flash[:errors]

    if params[:sort] == 'bad'
      @reviews = @target.review.published.bad.desc.page(params[:page])
    else
      @reviews = @target.review.published.good.desc.page(params[:page])
    end
  end

  private
    def set_target
      @target = Target.find(params[:id])
    end
end
