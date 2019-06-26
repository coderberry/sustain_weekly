class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order("created_at desc").page(params[:page])
  end

  def show
  end
end
