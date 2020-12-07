class ApplicationController < ActionController::API
    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            @token = JWT.encode({user_id: @user.id}, "yeet grandmas")
            render json: {user: @user, token: @token}, status: :accepted
        else
            render json: {message: 'Oops, the username or password is incorrect!'}, status: :unauthorized
        end
    end
end
