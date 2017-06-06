class PasswordResetsController < ApplicationController


     def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end

end
