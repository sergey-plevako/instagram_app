require 'actionpack/action_caching'

class HomeController < ApplicationController

 caches_action :index

  def index
    #@instagram = Instagram.user_recent_media("686493004", {:count => 1})
    #TODO: need to find out way to find by specific tag
    #@tags = Instagram.tag_search("sun")
    #@tags = @tags
    #@tags = Instagram.media_popular({:count=>99}) 
    @tags = Instagram.media_popular() 
  end
  
end
