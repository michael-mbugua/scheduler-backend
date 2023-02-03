class UsersController < ApplicationController
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      end
    def create
            user = User.create(user_params)
        if user.valid?
          render json: { user: UserSerializer.new(user) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
      end
    
    def index
        user=User.all
        render json: user
    end
    private
    def user_params
        params.require(:user).permit(:userName,:Email,:password)
    end
end
