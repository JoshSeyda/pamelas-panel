class TeachersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @teachers = Teacher.all
        @new_teacher = Teacher.new
    end

    def create
        @new_teacher = Teacher.create(teacher_params)
        @new_teacher.build_user(email: params[:email], password: params[:password]).save
       
    end

    def new
        @new_teacher = Teacher.new
        
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
       params.require(:teacher).permit(:firstname, :lastname, :username, :age, :salary, :education, :specialty) 
    end
end