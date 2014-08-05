class StarttestController < ApplicationController
 before_action :authenticate_user!
  def select_level
    
  	#@accept = Accept.new
  	#est = Test.new
	#testid = test.id

	session[:mark] = 0
	#@level_2 = Question.order("RANDOM()").where(:difficulty_level => 2).limit(1)
  	#@level_3 = Question.order("RANDOM()").where(:difficulty_level => 3).limit(1)

    #@total = @level_1 + @level_2 + @level_3 
	session[:question_no] = 1
  session[:level] = 5
  session[:level_temp] = 5.5
	@test = Test.new
	@test.user_id = current_user.id
	if @test.save
	session[:testid] = @test.id
    end

    #session[:total] = params[:q_no][:no]
    
    	#redirect_to starttest_start_path
	   #redirect_to starttest_start_path()
  end

  def random_test
  end

  def end_test
  	
    @total_marks = session[:mark]
    @test_id1 = session[:testid]
    @test = Test.where(:id => @test_id1)
    @test.first.marks = @total_marks
    @test.first.save

  end

  def result
  	@answer = params[:accept][:option_retrieved]
  	question = params[:accept][:questionid]
  	@q = Question.where(:id => question)
  	@correct_option = @q.first.correct_choice
	 
	 if @correct_option.eql? @answer
	   session[:mark] += 1
     #@increament = @q.first.difficulty_level.to_i/10
     session[:level_temp] =  0.5 + session[:level_temp]

	   fields = accept_params.merge(:isright => true,:test_id => session[:testid])
    else
      #@decrement = @q.first.difficulty_level/10
      session[:level_temp] = session[:level_temp]-0.5
	    fields = accept_params.merge(:isright => false,:test_id => session[:testid])
	 end
	   @accept = Accept.new(fields)
	   @accept.save
     session[:question_no] = session[:question_no] + 1
   
    if session[:question_no] == session[:total]
      redirect_to starttest_show_result_path
    end

     redirect_to starttest_start_path


  end

  def total_question

    session[:total] = params[:q_no][:no]
    redirect_to starttest_start_path(:total_questions => session[:total])

    
  end

  def check 
  end

  def start 


      x = session[:question_no].to_i
      y = session[:total].to_i
      if x == y+1
        redirect_to starttest_end_test_path
       
      end
#as
      #session[:total] = @total
      #if session[:question_no] == session[:total]
      #  redirect_to starttest_show_result_path
      #end
      if session[:level] < session[:level_temp] 
        if session[:level_temp] == session[:level] + 1
        session[:level] = session[:level_temp]
        end
        @level_user = session[:level]
      
        elsif session[:level] > session[:level_temp]
          if session[:level] == session[:level_temp] + 1
          session[:level] = session[:level_temp]
          end 
          @level_user = session[:level]
            elsif session[:level] == session[:level_temp]
            @level_user = session[:level]
            end
           
        

      
      @level_5 = Question.order("RANDOM()").where(:difficulty_level => @level_user).limit(1)
      @question_full = Question.where(:id => @level_5)
 
end

def show_result
	@tests = Test.where(:user_id => current_user.id)
end

private
    def accept_params
      params.require(:accept).permit(:questionid,:option_retrieved,:isright,:test_id)
    end
end
