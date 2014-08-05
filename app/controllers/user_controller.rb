class UserController < ApplicationController
  
  def test_results
    @test_given_by_user = Test.where(:user_id => current_user.id)
    @test_obj = Test.where(:user_id => current_user.id)
        @parentarrayx=[]

    @test_obj.each do |testobj|
      test_idx=testobj.id
      test_marks=testobj.ability
      test_time=testobj.created_at.strftime('%c').to_s
       @childarrayx=[]
       if test_marks.nil?
                @childarrayx.push(test_time,0)
                else
                  @childarrayx.push(test_time,test_marks)
       end
       
       @parentarrayx.push(@childarrayx)
       data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Questions')
    data_table.new_column('number', 'Skill Level')
    # Columns with role definition
    #data_table.new_column('string'  , nil, nil, 'tooltip')

    data_table.add_rows(@parentarrayx)

    opts   = { :width => 800, :height => 400, :title => 'Student Performance', :legend => 'none' }
    @chart = GoogleVisualr::Interactive::ColumnChart.new(data_table, opts)
  
    end
   

  end

  def tests_given
  end

  def test_show_details
    
    #pie chart=pc,levx=level of cuurent question in loop

   @pc=[0,0,0,0,1,0,0,0,0,0]


    i=1
    j=1
    @test_id=params[:test_id]
    value=5.5
    @all_questions = Accept.where(:test_id => @test_id)
    first_question = Question.where(:id => @all_questions.first.questionid)
    @parentarray=[]
    @newarr=[]
    @firstarray=[1,5.5,first_question.name]
    @parentarray.push(@firstarray)
    @all_questions.each do |question|

      quest = Question.where(:id => question.questionid)
      @levx=quest.first.difficulty_level
      @pc[@levx-1]=@pc[@levx-1]+1
      
      
    @child=[]
    diff="Level : "+j.to_s
    #@child.push(diff,@pc[j],j)
    @child.push(diff,@pc[j])

    @newarr.push(@child)
    j=j+1
      i=i+1
      if question.isright?
       value=value+0.5
       else
        value=value-0.5
      end
      childarray=[]
      childarray.push(i,value,quest.first.name)
      @parentarray.push(childarray)
      
    end

     data_table = GoogleVisualr::DataTable.new
    data_table.new_column('number', 'Questions')
    data_table.new_column('number', 'Skill Level')
    # Columns with role definition
    data_table.new_column('string'  , nil, nil, 'tooltip')

    data_table.add_rows(@parentarray)

    opts   = { :width => 500, :height => 300, :title => 'Student Performance', :legend => 'none' }
    @chart = GoogleVisualr::Interactive::AreaChart.new(data_table, opts)


   
    data_tablep = GoogleVisualr::DataTable.new
    data_tablep.new_column('string', 'Task')
    data_tablep.new_column('number', 'Hours per Day')
    data_tablep.add_rows(10)
    data_tablep.set_cell(0, 0, 'Difficulty Level : 1'     )
    data_tablep.set_cell(0, 1, @pc[0] )
    data_tablep.set_cell(1, 0, 'Difficulty Level : 2'      )
    data_tablep.set_cell(1, 1, @pc[1]  )
    data_tablep.set_cell(2, 0, 'Difficulty Level : 3'  )
    data_tablep.set_cell(2, 1, @pc[2]  )
    data_tablep.set_cell(3, 0, 'Difficulty Level : 4' )
    data_tablep.set_cell(3, 1, @pc[3]  )
    data_tablep.set_cell(4, 0, 'Difficulty Level : 5'    )
    data_tablep.set_cell(4, 1, @pc[4]  )
    data_tablep.set_cell(5, 0, 'Difficulty Level : 6'     )
    data_tablep.set_cell(5, 1, @pc[5] )
    data_tablep.set_cell(6, 0, 'Difficulty Level : 7'      )
    data_tablep.set_cell(6, 1, @pc[6]  )
    data_tablep.set_cell(7, 0, 'Difficulty Level : 8'  )
    data_tablep.set_cell(7, 1, @pc[7]  )
    data_tablep.set_cell(8, 0, 'Difficulty Level : 9' )
    data_tablep.set_cell(8, 1, @pc[8]  )
    data_tablep.set_cell(9, 0, 'Difficulty Level : 10'    )
    data_tablep.set_cell(9, 1, @pc[9]  )

    opts   = { :width => 500, :height => 400, :title => 'Pie Chart of Questions Attempted', :is3D => true }
    @chart2 = GoogleVisualr::Interactive::PieChart.new(data_tablep, opts)
  
  end

end