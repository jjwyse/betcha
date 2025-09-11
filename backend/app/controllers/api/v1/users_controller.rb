class Api::V1::UsersController < ApplicationController
  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email)
    user = User.create(user_params)
    render(status: 201, json: { user: user })
  end
end
