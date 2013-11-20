class HomeController < ApplicationController
#include Instagram::Client::Tags 
#include Instagram::Client::Media
  def index
    @instagram = Instagram.user_recent_media("686493004", {:count => 1})
    #TODO: need to find out way to find by specific tag
    #@tags = Instagram.tag("sun")
    @tags = Instagram.media_popular({:count=>10})
  end
end
