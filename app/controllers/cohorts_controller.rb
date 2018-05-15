class CohortsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @cohorts = Cohort.all
    end

    def create
        @cohort = Cohort.create(cohort_params)
        Cohort
        redirect_to "/cohorts/#{@cohort.id}"
    end

    def new
        @cohort = Cohort.new
    end

    def show
        @cohort = Cohort.find(params[:id])
        @course = Course.find_by(id: @cohort.course_id)
    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to "/cohorts/#{:id}"
    end

    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end


    private 

    def cohort_params
       params.require(:cohort).permit(:start_date, :end_date, :course_id, :teacher_id) 
    end
end
