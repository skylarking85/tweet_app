class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new

  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(content: params[:content])
    redirect_to("/posts/#{params[:id]}")
  end

  def delete
    @post = Post.find_by(id: params[:id])
        @post.destroy
        redirect_to("/posts")
  end
end
