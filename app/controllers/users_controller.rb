class UsersController < ApplicationController
  
 def show
    @user = User.find(params[:id])
    if @user
      @statuses = @user.statuses.order("created_at desc")
      render action: :show
   
    end
  end
end

def create
    @status = current_user.statuses.new(params[:status])

    respond_to do |format|
      if @status.save
        format.html { redirect_to @status, notice: 'Status was successfully created.' }
        format.json { render json: @status, status: :created, location: @status }
      else
        format.html { render action: "new" }
        format.json { render json: @status.errors, status: :unprocessable_entity }
      end
    end
  end