ForestLiana.env_secret = Rails.application.secrets.forest_env_secret
ForestLiana.auth_secret = Rails.application.secrets.forest_auth_secret
ForestLiana::ApplicationController.class_eval do
  skip_before_action :verify_authenticity_token, raise: false
end
ForestLiana::SessionsController.class_eval do
  skip_before_action :verify_authenticity_token, raise: false
end
