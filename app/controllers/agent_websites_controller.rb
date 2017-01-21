class AgentWebsitesController < ApplicationController
  before_action :authenticate_agent!
  before_action :set_agent_website, only: [:show, :edit, :update, :destroy]
  layout "dum"


  # GET /agent_websites
  # GET /agent_websites.json
  def index
    @agent_websites = current_agent.agent_websites
  end

  # GET /agent_websites/1
  # GET /agent_websites/1.json
  def show
    AgentWebsite.create_website_api_key2(@agent_website)
    redirect_to agent_websites_path
  end

  # GET /agent_websites/new
  def new
    @agent_website = AgentWebsite.new
  end

  # GET /agent_websites/1/edit
  def edit
  end

  # POST /agent_websites
  # POST /agent_websites.json
  def create
    @agent_website = AgentWebsite.new(agent_website_params)
    @agent_website.agent_id = current_agent.id
    respond_to do |format|
      if @agent_website.save
        format.html { redirect_to @agent_website, notice: 'Agent website was successfully created.' }
        format.json { render :show, status: :created, location: @agent_website }
      else
        format.html { render :new }
        format.json { render json: @agent_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agent_websites/1
  # PATCH/PUT /agent_websites/1.json
  def update
    respond_to do |format|
      if @agent_website.update(agent_website_params)
        format.html { redirect_to @agent_website, notice: 'Agent website was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent_website }
      else
        format.html { render :edit }
        format.json { render json: @agent_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_websites/1
  # DELETE /agent_websites/1.json
  def destroy
    @agent_website.destroy
    respond_to do |format|
      format.html { redirect_to agent_websites_url, notice: 'Agent website was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def crawler

end

def settings
  
end

def import
  
end

def trendings
  
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent_website
      @agent_website = AgentWebsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_website_params
      params.require(:agent_website).permit(:website_link, :website_api_key)
    end
end
