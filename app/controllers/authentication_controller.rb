class AuthenticationController < ApplicationController

    before_action :user_params, only: [:login]
    def login
        @user = User.find_by(name: user_params[:name])
        if !@user 
            render json: {error: 'No user with that name'}
        else
            if !@user.authenticate(user_params[:password])
            render json: {error: 'Passwords no good'}
            else 
                payload = {user_id: @user.id}
                secret = "Some Secret Key Base here weirdo"
                token = JWT.encode payload, secret
                time = Time.now + 2.hours.to_i

                render json: { user:@user, token: token, exp: time.strftime("%m-%d-$Y %H:%M")}, status: :created
            end
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
