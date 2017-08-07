class QuestionsController < ApplicationController
  def answer

    def coach_answer(your_message)
      if your_message.end_with? "?"
        "Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!"
        ""
      else
        "I don't care, get dressed and go to work!"
      end
    end

    def coach_answer_enhanced(your_message)
      answer = nil
      your_message = your_message.capitalize if your_message == "I am going to work right now!".upcase
      answer = "I can feel your motivation!" if your_message == your_message.upcase
      if answer
        "#{answer} #{coach_answer(your_message)}"
      else
        coach_answer(your_message)
      end
    end

    @question = params[:question]
    @answer = coach_answer_enhanced(params[:question])

  end

  def ask
  end
end
