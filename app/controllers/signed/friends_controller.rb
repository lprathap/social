class Signed::FriendsController < Signed::BaseController

	def index
		@friends = User.all
		@all_friends = current_user.all_friends
	end

	def friend
		current_user.user_friends.create(friend_id: params[:friend_id])
	end
end