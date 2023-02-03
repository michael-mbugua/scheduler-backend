class Api::V1::AuthController < ApplicationController
    def create
        @user = User.find_by(userName: user_login_params[:userName])
        #User#authenticate comes from BCrypt
        if @user && @user.authenticate(user_login_params[:password])
          # encode token comes from ApplicationController
          token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid userName or password' }, status: :unauthorized
        end
      end
    
      private
    
      def user_login_params
        # params { user: {userName: 'Chandler Bing', password: 'hi' } }
        params.require(:user).permit(:userName, :password)
      end
end
