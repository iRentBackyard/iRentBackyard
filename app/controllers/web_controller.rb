class WebController < ApplicationController
  def index
  end
  def office_get_together
  end
  def general_parties
  end
  def pool_party
  end
  def host
  end
  def register_user
   # p 'fsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsd'
  end
  def create_user
   flash.clear
   email = User.where(:email => params[:user][:email]).first
   if params[:user][:email].blank?
      flash[:error] = "Email Id can't be blank."
     elsif params[:user][:first_name].blank?
      flash[:error] = "Enter your first name."
       elsif params[:user][:last_name].blank?
      flash[:error] = "Enter your last name."
     elsif email.present?
       flash[:error] = "You have already subscribed with this email id." 
     elsif !params[:user][:email].match(AppConstants::EMAIL_FORMAT) 
       flash[:error] = "Please enter valid email id." 
      elsif params[:user][:password].blank?
       flash[:error] = "Please enter password."
       elsif params[:user][:password_confirmation].blank?
       flash[:error] = "Please enter password."
      elsif params[:user][:password] != params[:user][:password_confirmation]
       flash[:error] = "confirmation password doesn't match the password." 
     else
       @user = User.register_new_user(params_user)
       sign_in @user
   end 
  end
  
  def sign_in_user
  end
  
  private
  
  def params_user
   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
  
end
