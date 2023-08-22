class PostsController < ApplicationController

  # without the following line of code Postman returns some weird HTML file and Rails S bugs out in the terminal.
  skip_before_action :verify_authenticity_token

  def index
    puts "hit index method in posts controller"
    @posts = Post.all
    render json: {posts: @posts}
  end

  def create
    puts "hit create method in posts controller"
    puts params[:content]
    @post = Post.create(content: params[:content], user_id: params[:user_id])
    render json: {post: @post}
    puts "end of create method"
  end


end
