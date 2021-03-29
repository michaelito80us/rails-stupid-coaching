class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question.downcase == 'i am going to work'
                'Great'
              elsif @question[-1] == "?"
                'Silly question, get dressed and go to work!'
              elsif @question.downcase == 'i am going to work right now!'
                ''
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
