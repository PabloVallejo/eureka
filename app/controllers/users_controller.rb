class UsersController < ApplicationController

  #
  # Creates a user or logs them in.
  #
  def create_or_login
    data = {
      email: params['email'],
      first_name: params['first_name'],
      last_name: params['last_name'],
      uid: params['id']
    }

    # Log user in.
    user = User.from_omniauth(data)
    sign_in :user, user
    current_user.remember_me!

    respond_to do |format|
      format.json { render json: {success: true} }
    end

  end

end
