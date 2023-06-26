class AnswersController < ApplicationController
  def create
    Answer.create(answers_params)
    redirect_to questions_path(params[:question_id])
  end

  privvate
  def answers_params
    params.require(:answers).permit(:content, :name).merge(question_id: params[:question_id])
  end
end
