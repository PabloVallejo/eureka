class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  #
  # Facebook's callback.
  #
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?

    else
      puts '-------'
      puts @user
      puts @user.errors
      puts '-------'

      puts '---------'
      puts session['devise.facebook_data']
      puts '---------'

      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

end
