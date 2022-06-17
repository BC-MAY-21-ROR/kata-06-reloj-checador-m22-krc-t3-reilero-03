class RegistrationsController < ApplicationController
  # instantiates new user
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      # stores saved user id in a session
      session[:admin_id] = @admin.id
      redirect_to root_path, notice: 'Successfully created account'
    else
      render :new
    end
  end

  private

  def admin_params
    # strong parameters
    params.require(:admin).permit(:name, :password, :password_confirmation)
  end
end
