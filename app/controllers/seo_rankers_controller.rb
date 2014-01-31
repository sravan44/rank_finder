class SeoRankersController < ApplicationController
  def index
  	@rank={}
  end
  def getranks
  	#render :json => params and return false
  	@rank = {}  
  	@rank['google'] = Ranks.rank(:google, params[:keyword], params[:url], :limit => 100)
  	@rank['yahoo'] = Ranks.rank(:yahoo, params[:keyword], params[:url].gsub('http://','').gsub('https://',''), :limit => 100)
  	@rank['bing'] = Ranks.rank(:bing, params[:keyword], params[:url], :limit => 100)
  	# flash[:notice] = "success"
  	respond_to do |format|
        format.js
    end
  end
end
