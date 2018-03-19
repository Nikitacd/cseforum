class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cache_headers
  def  after_sign_in_path_for(resource)
  	dashboard_path(current_user)
  	
  end
  def set_cache_headers
  	response.headers["Cache-Control"]="no-cache,no-store,max-age=0,must-revalidate"
  	response.headers["pragma"]="no-cache"
  	response.headers["Expires"]="Fri,03 Oct 1997 00:00:00 GMT"
  	
  end
end
