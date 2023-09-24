class ApplicationController < ActionController::API
    # before_action :authenticate_user
    private

    def authenticate_user
      header = request.headers['Authorization']
      token = header.split(' ').last if header
      begin
        decoded = JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
        @current_user = User.find(decoded[0]['user_id'])
      rescue JWT::DecodeError
        render json: { error: 'Authentication failed' }, status: :unauthorized
      end
    end
end
