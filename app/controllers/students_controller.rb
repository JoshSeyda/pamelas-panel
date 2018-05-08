class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def create
        @student = Student.create(student_params)
        redirect_to "/students/#{@student.id}"
    end

    def new
        @student = Student.new
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
       params.require(:student).permit(:firstname, :lastname, :username,:email,  :password_digest, :age, :birthday, :cohort_id, :education) 
    end
end

