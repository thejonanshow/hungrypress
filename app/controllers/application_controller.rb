# Please keep your filthy paws off of this file unless you have a great reason.
class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery
end
