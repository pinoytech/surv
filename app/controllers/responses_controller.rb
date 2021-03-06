class ResponsesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:index, :show]
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  before_action :set_feedback, only: [:new, :create]

  def index
    @feedback = Feedback.includes(responses: [:respondent, :answers => :question]).friendly.find(params[:feedback_id])
    @responses = ArrayPagination.paginate(@feedback.responses, {page: params[:page], per: 5})
  end

  def show
  end

  def new
    @response = @feedback.responses.new
    @response.build_respondent
    @questions = @feedback.questions
    @questions.each do |question|
      @response.answers.build(question_id: question.id)
    end
  end

  def create
    @response = @feedback.responses.new(response_params)
    respond_to do |format|
      if @response.save
        format.html { redirect_to new_feedback_response_path(@response.feedback), notice: 'Response was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_response
      @response = @feedback.responses.find(params[:id])
    end

    def set_feedback
      @feedback = Feedback.friendly.find(params[:feedback_id])
    end

    def response_params
      params.fetch(:response).permit(:feedback_id, answers_attributes: [:answer, :question_id], respondent_attributes:[:name])
    end
end
