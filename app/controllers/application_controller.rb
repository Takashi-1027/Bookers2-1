class ApplicationController < ActionController::Base
  # name認証
  before_action :configure_permitted_parameters, if: :devise_controller?

  # サインインとサインアップ両方の遷移先
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  # サインアウト後の遷移先
  def after_sign_out_path_for(resource)
    root_path
  end

  protected
  #strong parametersを設定し、usernameを許可
  def configure_permitted_parameters
   #:emailのデータ操作を許可されるように
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
	 devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
  end

end
