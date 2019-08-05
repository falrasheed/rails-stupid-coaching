# frozen_string_literal: true
class QuestionsController < ApplicationController
  def ask
    @answer = params[:action]
  end

  def answer
    @user_question = params[:question_key]
    if @user_question == 'I am going to work'
      return @answer = 'Great!'
    elsif @user_question.end_with?('?')
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
