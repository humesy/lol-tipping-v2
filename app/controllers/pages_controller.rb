class PagesController < ApplicationController
  def home
    redirect_to new_user_registration_path if current_user.nil?
  end
end
