class PostsController < ApplicationController

    def create
        @companion =Companion.find(params[:companion_id])
        @post = @companion.posts.new(post_params)

        respond_to do |format|
            if @post.save
              format.html { redirect_to companion_posts_url(@companion), notice: "Post was successfully created." }
              format.json { render :show, status: :created, location: @companion }
            else
              format.html { render :companion/posts, status: :unprocessable_entity }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end


    end

    def destroy
        @post= @companion.posts.find(params[:id])
        @post.destroy
    end


    private

    def post_params
        params.require(:companion).permit(:body, :companion_id)
    end


end