class QuestionsController < ApplicationController
  def ask
    # create an view
    # the view within questions folder should have this name
    # ask.htlm.erb
  end

  def answer
    # raise and on the browser type params to see the parameter
    @question = params[:question]
    # with params even though is a string you can pass either a symbol or a string.
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?" && @question == @question.upcase
      @answer = "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif @question == @question.upcase
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
