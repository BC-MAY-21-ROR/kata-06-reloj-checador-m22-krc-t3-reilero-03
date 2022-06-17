class SessionsController < ApplicationController
  def new; end

  def create
    admin = Admin.find_by(name: params[:name])
    # finds existing user, checks to see if user can be authenticated
    if admin.present? && admin.authenticate(params[:password])
      # sets up user.id sessions
      session[:admin_id] = admin.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid username or password'
      render :new
    end
  end

  def destroy
    # deletes user session
    session[:admin_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end
end
