class CoachingController < ApplicationController
  def answer
    @your_message = params[:your_message]
    @coach_message = coach_answer(@your_message)
  end

  def ask
  end


  def coach_answer(your_message)
    question_mark_pos = your_message.index("?")

    message = your_message.downcase

    if !question_mark_pos.nil? && question_mark_pos > 0 && question_mark_pos == message.length - 1
      "Silly question, get dressed and go to work!"
    elsif message == "I am going to work right now!".downcase
      "Right Son!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
