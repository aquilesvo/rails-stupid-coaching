class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    if @question != 'I am going to work'
      @answer = "I don't care, get dressed and go to work!"
    elsif @question[-1] == "?"
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    end
    return @answer
  end

  def ask
    @question = params[:question]
  end

end
