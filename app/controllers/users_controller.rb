class UsersController < ApplicationController

 def show
  @user_friendships = current_user.user_friendships.all
    @user = User.find_by_biz_name(params[:id])
     @pins = @user.pins(params[:id]).order("created_at desc").page(params[:page]).per_page(10)
  
     
   
    if @user
      @statuses = @user.statuses.order("created_at desc")
      render action: :show
      
      else
      render file: 'public/404', status: 404, formats: [:html]
   
    end
  end
end





  