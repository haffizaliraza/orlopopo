class DummiesController < ApplicationController

  def index
    session_key=0
    header_set = request.headers['apikey']
		session_key = request.headers['sessionkey']
    prod = request.headers['product']
    
    if website = AgentWebsite.find_by(website_api_key: header_set)
     # if (!session_key.nil? && profile = Profiler.find_by(session_key: session_key))
      #    Profiler.expiry_check(profile , params[:product_name] , website) 

      ####agent info Section###
      @agent_info=Agent.find_by(id: website.agent_id)
      @agent_web=website

      if session_key.nil? 
      ##@agent_session=9898
      #new session creations
      # Profiler.without_session
       #Bilawaja.upgrade
      @agent_session=Mango.without_session(params[:product_name])

      else 
      @agent_session=session_key
      ##expiry checker

      ## expiry_check
      Mango.session(params[:product_name] ,@agent_session)

      end
      

      #####end ##########
        if params[:product_name]
          @sets = FrequentItemSet.where('item like ?' , "%#{params[:product_name]}%")
          if !@sets.empty?
            array_name = @sets[0].item.split(',')
            array_name = array_name.map {|a| a.gsub(/({|}|")/,'')}
            @arr = []
            array_name.each do |a|
            @arr << Product.find_by(name: a)
            end 
          end 
    #   else
    #     Profiler.without_session(website , params[:product_name]) 
    #   end
      # render json: @arr
          render :json => @arr
          #@arr = @arr.to_json
        end    
      else

      @api_error = JSON.parse('{"ERROR": "API-Key invalid"}')
      render  'show'    
    end
  end

 # if request.env["HTTP_REFERER"].present? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
 #      redirect_to :back
 #    else
 #       render nothing: true
 #    end
 end
