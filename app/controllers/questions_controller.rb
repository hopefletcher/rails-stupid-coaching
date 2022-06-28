class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @coach_answer = ""

    if @answer.ends_with?('?')
      @coach_answer = "Silly quetion, get dressed and go to work!"
    elsif @answer == "I am going to work"
      @coach_answer = "Great!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
