class PostsController < ApplicationController
  # potential todos: approve, unapprove, report this

  def index
    # usually this is a list of all the posts
    # TODO: add sorting, ordering, filters, etc.
    @posts = Post.approved
  end

  def show
    # this displays a specific post
    # Go get the specific post
    # TODO: permit certain parameters
    # TODO: use nice slugs as urls instead of numbers
    @post = Post.find(params[:id])
  end

  def new
    # this displays the new screen to the user
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
    # this displays the actual edit screen to the user
  end

  def update
    # this actually updates the specific post
  end

  def destroy
    # TODO: only going be allowed by our admin
    # this will attempt to delete the specific post
  end

  def display_category
    @posts = Post.approved.where(category: params[:category].singularize)
    # TODO: error handling
    render :index
  end

private

  def post_params
    params.require(:post).permit(
      :title,
      :body,
      :category,
      :link,
      :submitted_by_name
    )
  end
end
