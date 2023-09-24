class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        token = generate_token(user.id)
        render json: { token: token }, status: :ok
      else
        render json: { error: 'Invalid credentials' }, status: :unauthorized
      end
    end
  
    private
  
    def generate_token(user_id)
      payload = { user_id: user_id }
      JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
    end
  end
  