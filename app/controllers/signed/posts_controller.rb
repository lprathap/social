class Signed::PostsController < Signed::BaseController
	def index
		@posts = Post.all
		@post = Post.new	
	end
	def create
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to signed_posts_path
        else
            render :index
        end
    end
    def post_params
        params.require(:post).permit(:content)
    end    
end
