class AdminController < ApplicationController
  def index
    @business_users = BusinessUser.all
  end
end
