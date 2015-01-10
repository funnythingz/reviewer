class ReviewsController < ApplicationController

  # POST /reviews
  def create
    @review = Review.new(review_params)
    @review.status = 'draft'

    respond_to do |format|
      if @review.save
        format.html { redirect_to clinic_path(@review.clinic_id), notice: '口コミの投稿ありがとうございました' }
      else
        format.html { redirect_to :back, flash: { errors: @review.errors.messages } }
      end
    end
  end

  private
    def review_params
      params.require(:review).permit(:reviewer, :mail, :comment, :status, :clinic_id, :action)
    end
end
