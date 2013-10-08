class StudentsController < ApplicationController

	def new
		@student = Student.new
	end


	def create
		@student = Student.new(params[:student])
	   if @student.save
	    redirect_to(:controller => 'students' , :action => 'index')
	   end
	end



	def show
	 	@student = Student.find_by_id(params[:id])
	end	



	def index
		@students = Student.all
	end



	def edit
	  @student  = Student.find_by_id(params[:id])
	 end



	def update
		@student = Student.find_by_id(params[:id])

		if @student.update_attributes(params[:student])
		    redirect_to(:controller => 'students' , :action => 'new')
		end
	end



	def destroy
      @student = Student.find(params[:id])
      @student.destroy
    end
  

end