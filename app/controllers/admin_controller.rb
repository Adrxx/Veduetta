class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def prefs
  end

end
