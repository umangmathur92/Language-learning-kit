class TeachController < ApplicationController
  def teach_tut
  	redirect_to new_tutorial_path
  end
end
