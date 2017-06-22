class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]


  # Index action to render all Posts
  def index
    @posts = Post.all
  end

  # Create action saves the post into database
  def new
    @post = Post.new
  end

  # Create action saves the post into database
  def create
    @post = Post.new
    if @post.save(post_params)
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
end

# Edit action retrieves the post and renders the edit pages
def edit
end

# Update action updates the post with the new information
