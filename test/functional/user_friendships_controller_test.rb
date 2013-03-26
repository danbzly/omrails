require 'test_helper'

class UserFriendshipsControllerTest < ActionController::TestCase
    context "#index" do
    context "when not logged in" do
      should "redirect to the login page" do
        get :index
        assert_response :redirect
      end
    end

    context "when logged in" do
      setup do
        @friendship1 = create(:pending_user_friendship, user: users(:jason), friend: create(:user, first_name: 'Pending', last_name: 'Friend'))
        @friendship2 = create(:accepted_user_friendship, user: users(:jason), friend: create(:user, first_name: 'Active', last_name: 'Friend'))
        @friendship3 = create(:requested_user_friendship, user: users(:jason), friend: create(:user, first_name: 'Requested', last_name: 'Friend'))
        @friendship4 = user_friendships(:blocked_by_jason)

        sign_in users(:jason)
        get :index
      end
end
