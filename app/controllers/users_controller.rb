class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  puts "hit users controller"
  def create
    puts "hit create method inside the user controller"
    @user = User.create(username: params[:username], email: params[:email], first_name: params[:first_name], last_name: params[:last_name])
    render json: {user: @user}
    puts "hit end of create user method"
  end
end
