class UsersController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id].to_i)
  end
end
