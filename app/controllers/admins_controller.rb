class AdminsController < ApplicationController
    before_action :authenticate_user!

    def index
           
    end

    def create
        @admin = Admin.create(admin_params)
        @admin.build_user(email: params[:email], password: params[:password]).save
        redirect_to "/admins/#{@admin.id}"
    end

    def new
        @admin = Admin.new
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def edit
        @admin = Admin.find(params[:id])
    end

    def update
        @admin = Admin.find(params[:id])
        @admin.update(admin_params)
        redirect_to "/admins/#{:id}"
    end

    def destroy
        Admin.find(params[:id]).destroy
        redirect_to '/admins'
    end


    private 

    def admin_params
       params.require(:admin).permit(:firstname, :lastname, :username) 
    end
end
