class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end

    def create
        @teacher = Teacher.create(teacher_params)
        redirect_to "/teachers/#{@teacher.id}"
    end

    def new
        @teacher = Teacher.new
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
        redirect_to "/teachers/#{@teacher.id}"
    end

    def destroy
        Teacher.find(params[:id]).destroy
        redirect_to '/teachers'
    end


    private 

    def teacher_params
       params.require(:teacher).permit(:firstname, :lastname, :username, :email, :password_digest, :age, :salary, :education, :birthday, :specialty) 
    end
end