class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # should be referring to ask value?
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
