class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def create

    # @post = Post.new
    # @post.title = params[:title]
    # @post.content = params[:content]

    @post = Post.new(title:params[:title], content:params[:content])
    @post.save

    # @post = Post.create(title:params[:title], content:params[:content])

    redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to '/'
  end

  def read
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
  end

  def real_update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to '/'
  end
end
