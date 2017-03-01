class QuestionsController < ApplicationController
  def insert
    respond_to do |format|
      format.js
    end
  end
end
