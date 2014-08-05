class LearnController < ApplicationController
  def index

  		@language = Language.all

  end

  def tutorial

		@tutorials = Tutorial.where(:language_id => params[:language_id])
		@exercise = Exercise.all
  end

  def exercise
  		@exercises = Exercise.where(:id => params[:id])
      session[:exercise_id] = @exercises.first.id
   end

   def back
     redirect_to :back
   end
   
  def myfunc

    @exer_id = session[:exercise_id]

     @lang_type = params[:ltpp]
     @compile_prc = params[:cmpp]
     @execute_prc = params[:excc]
     @file_ext = params[:fxtt]
     @code = params[:inputofcode]
      @filename='mycode'+@file_ext
     File.open(@filename, 'w') do |f|  f.puts @code  end

     if @lang_type.eql? 'Interpreted'
          @error_str=@execute_prc+' 2>&1'
          `#{@execute_prc}`
          @myexitstatus=$?.exitstatus
          (@myexitstatus == 0) ? @myoutput=`#{@execute_prc}` : @myoutput=`#{@error_str}`
          File.delete(@filename)
     elsif @lang_type.eql? 'Compiled'
            @error_str=@compile_prc+' 2>&1'
            `#{@compile_prc}`
            @myexitstatus=$?.exitstatus
            (@myexitstatus == 0) ? @myoutput=`#{@execute_prc}` : @myoutput=`#{@error_str}`
            if  File.exist?(@filename) then   File.delete(@filename) end
            if  File.exist?('mycode') then   File.delete('mycode') end
     end
     session[:code] = @code
       render 'output'
  end

end
