class PostsController < ApplicationController
    before_action :get_companion

    def create
        @posts = @companion.posts.create(post_params)
    end

    def destroy
        @post= @companion.posts.find(params[:id])
        @post.destroy
    end


    private

    def get_companion
        @companion =Companion.find(params[:companion_id])
    end

    def post_params
        params.require(:companion).permit(:body, :companion_id)
    end


end