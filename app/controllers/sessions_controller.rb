class User::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new

    # Taken from Devise's method.
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    options = serialize_options(resource)
    respond_with(resource, options)
  end

  # POST /resource/sign_in
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    sign_in :user, user
    redirect_to root_url
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
