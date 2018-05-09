class MembersController < ApplicationController
    def index
        # @cohort = Cohort.find(params[:id])
        # @member = CohortStudent.new
       
    end

    def create
        @member = Member.create(member_params)
        redirect_to "/cohorts/#{@member.cohort_id}"
    end

    def new
        @cohort = Cohort.find(params[:id])
        @member = Member.new
    end

    def show
      
    end

    def edit
        @member = Member.find(params[:id])
    end

    def update
        @member = Cohort.find(params[:id])
        @member.update(member_params)
        redirect_to "/cohorts/#{:id}"
    end

    def destroy
        Member.find(params[:id]).destroy
        redirect_to '/cohorts'
    end


    private 

    def member_params
        params.require(:member).permit(:cohort_id, :student_id)
    end
end
