class UserNotifier < ActionMailer::Base
  default from: "from@example.com"

  def friend_requested(user_friendship_id)
  	user_friendship = UserFriendship.find(user_friendship_id)

  	@user = user_frienship.user
  	@friend = user_friendship.friend

  	mail to: @friend.email
  	     subject: "#{@user.Biz_name} wants to be friends on Entrecommunity"
  	 end
    end


  	 def friend_request_accept(user_friendship_id)
  	user_friendship = UserFriendship.find(user_friendship_id)

  	@user = user_frienship.user
  	@friend = user_friendship.friend

  	mail to: @user.email
  	     subject: "#{@friend.Biz_name} has accepted your friend request"
  	 end
end
end
