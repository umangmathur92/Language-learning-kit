class AuthorController < ApplicationController
  def question_by_author
  	@questions_by_author = Question.where(:user_id => current_user.id)
  end

def tutorials_by_author
  @tutorials = Tutorial.where(:user_id => current_user.id)

end

def exercise_by_author
  @exe_id = params[:exercise_id]
  @exercises = Exercise.where(:tutorial_id => @exe_id)


end

end