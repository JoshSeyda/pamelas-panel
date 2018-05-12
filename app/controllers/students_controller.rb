class StudentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @students = Student.all
        @new_student = Student.new
    end

    def create
        @new_student = Student.create(student_params)
        
    end

    def new
        @new_student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to "/students/#{:id}"
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end


    private 

    def student_params
       params.require(:student).permit(:firstname, :lastname, :username,:age, :birthday, :cohort_id, :education) 
    end
end

