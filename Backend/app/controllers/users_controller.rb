class UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]

    def index
        users = User.all
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(name: params[:user][:name], email: params[:user][:email])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), jwt:token}, status: :created
        else
            render json: {error: 'failed to create a user'}, status: :not_acceptable
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {message: 'Your account has been deleted'}
    end

    private
      def user_params
        params.permit(:name, :email, :password)
      end
end
