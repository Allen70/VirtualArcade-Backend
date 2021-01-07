class UsersController < ApplicationController

    before_action :user_params, only: [:coin,:create]

    def create
        @user = User.create(user_params)
        render json: {user: @user, message: "ok"}
    end

    def coin
        @user = User.find_by(name: user_params[:name])
        @user.update(user_params)
        render json: {user: @user, message: "updated coins"}
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :coins)
    end

end