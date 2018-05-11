class CoursesController < ApplicationController
    def index
        @courses = Course.all
        @course = Course.new
    end

    def create
        @new_course = Course.create(course_params)
    
    end

    def new
        @course = Course.new
    end

    def show
        @course = Course.find(params[:id])
        @cohorts = Cohort.where(course_id: params[:id])
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to "/courses/#{:id}"
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end


    private 

    def course_params
       params.require(:course).permit(:name, :description) 
    end
end
