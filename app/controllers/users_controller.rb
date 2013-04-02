class UsersController < ApplicationController

 def show
  @user_friendships = current_user.user_friendships.all
    @user = User.find_by_biz_name(params[:id])
    if @user
      @statuses = @user.statuses.order("created_at desc")
      render action: :show
      else
      render file: 'public/404', status: 404, formats: [:html]
   
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


  