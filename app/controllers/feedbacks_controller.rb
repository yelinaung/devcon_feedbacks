class FeedbacksController < ApplicationController
  # GET /feedbacks
  # GET /feedbacks.json
  def index
    @feedbacks = Feedback.all

    render json: @feedbacks
  end

  # GET /feedbacks/1
  # GET /feedbacks/1.json
  def show
    @feedback = Feedback.find(params[:id])
    render json: @feedback
  end

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @feedback = Feedback.new(
      android_id: params[:android_id],
      overall_rating: params[:overall_rating],
      useful: params[:useful],
      content: params[:content],
      speaker: params[:speaker],
      anything: params[:anything],
      package_name: params[:package_name],
      version_name: params[:version_name],
      current_time: params[:current_time],
      network_name: params[:network_name],
      phone_type: params[:phone_type],
      api: params[:api],
      vendor: params[:vendor],
      model: params[:model]
    )

    if @feedback.save
      render json: @feedback, status: :created, location: @feedback
    else
      render json: @feedback.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feedbacks/1
  # PATCH/PUT /feedbacks/1.json
  #def update
  #  @feedback = Feedback.find(params[:id])
#
  #  if @feedback.update(
  #    anything: params[:anything],
  #    api: params[:api],
  #    content: params[:content],
  #    rate: params[:rate],
  #    speaker: params[:speaker],
  #    usefulness: params[:usefulness],
  #    vendor: params[:vendor]
  #  )
  #    head :no_content
#    else
#      render json: @feedback.errors, status: :unprocessable_entity
#    end
#  end
#
#  # DELETE /feedbacks/1
#  # DELETE /feedbacks/1.json
#  def destroy
#    @feedback = Feedback.find(params[:id])
#    @feedback.destroy
#
#    head :no_content
#  end

  private
  def feedback_params
  end
end
