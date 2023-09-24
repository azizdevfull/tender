class RegistrationsController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save
        token = generate_token(user.id)
        render json: { token: token }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
  
    def generate_token(user_id)
      payload = { user_id: user_id }
      JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
    end
  end
  