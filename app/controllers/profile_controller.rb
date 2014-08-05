class ProfileController < ApplicationController
  def viewtest
  	@user = current_user.id
  	@tests = Test.where(:user_id => @user)
  	
  end
end
