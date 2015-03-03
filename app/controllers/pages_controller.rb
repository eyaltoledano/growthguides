class PagesController < ApplicationController

before_action :authenticate_user!, only: [:dashboard]
  
  def home
  	if current_user
  		redirect_to guides_path
  	end
  	@guides = Guide.last(4)
  end

  def dashboard
  	@guide = current_user.guides
  end

end
