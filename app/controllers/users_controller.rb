# Users should have access to their own user pages (users#show).
# Administrators should have access to the index and all user pages.
class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
  end
end
