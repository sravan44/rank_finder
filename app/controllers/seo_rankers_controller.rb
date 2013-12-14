class SeoRankersController < ApplicationController
  def index
  end
  def getranks
  	rank = {}  
  	rank['google'] = Ranks.rank(:google, params[:keyword], params[:url], :limit => 100)
  	rank['yahoo'] = Ranks.rank(:yahoo, params[:keyword], params[:url], :limit => 100)
  	rank['bing'] = Ranks.rank(:bing, params[:keyword], params[:url], :limit => 100)
  	render :text => rank and return false
  end
end
