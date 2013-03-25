class UsersController < ApplicationController
  
 def show
    @user = User.find(params[:id])
    if @user
      @statuses = @user.statuses.all
      render action: :show
   
    end
  end
end

