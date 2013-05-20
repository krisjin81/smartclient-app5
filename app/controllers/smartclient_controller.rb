require 'RPCManager'

class SmartclientController < ApplicationController             
    def index
      
    end
    
    def data 
      request = params[:smartclient]
      # set the request parameters
      rpc = RPCManager.new(request, Supplyitem)      
      @result = rpc.processRequest 
      render json: @result
    end           
end
 