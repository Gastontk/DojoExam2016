class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # render plain: user_params
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id 
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
  end

  def index
  end

  def show
  end

  def update
  end

    # ------------
  # function for 404  page creation
  def route_error
    # render html: "<h1>I can't find that page. Sorry. It's probably my fault.</h1> <br> <img src='https://d13yacurqjgara.cloudfront.net/users/14248/screenshots/1240413/404-dribb.gif' alt='binoculars'/>".html_safe
    @route_err= "#{params[:path]}"
  end
  # -------------


  private
      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
      end
end
