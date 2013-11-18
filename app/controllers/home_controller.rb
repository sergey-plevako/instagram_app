class HomeController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media("686493004", {:count => 1})
  end
end
