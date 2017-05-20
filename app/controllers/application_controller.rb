class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      # permet de configurer username et avatar à l'inscription
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])

      # autorise la modification de ces champs dans le form Devise
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
    end
end
