class Signed::PostsController < Signed::BaseController
	def index
		@posts = Post.all		
	end
end
