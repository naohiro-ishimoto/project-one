class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )

    if @user.save
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("posts/new")
    end
  end

  def login_form
    @user = User.new
  end

  def login
    if User.find_by(email: params[:email],password: params[:password])
      @user = User.find_by(email: params[:email],password: params[:password])
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/")
  end

end
