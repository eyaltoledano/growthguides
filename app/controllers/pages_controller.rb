class PagesController < ApplicationController
  
  def home
  	if current_user
  	redirect_to guides_path
  	end
  end

end
