class FeedbacksController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def index
    @feedbacks = Feedback.includes(:questions)
  end

  def show
  end

  def new
    @feedback = Feedback.new
    Feedback::DEFAULT_QUESTIONS.each do |question|
      @feedback.questions.build(question: question)
    end
  end

  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to feedbacks_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    def feedback_params
      params.fetch(:feedback).permit(:name, questions_attributes: [:question, :custom])
    end
end
