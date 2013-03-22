class ProfilesController < ApplicationController
  def show
  	@user = User.first
  	if @user
  		@statuses = Status.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end
