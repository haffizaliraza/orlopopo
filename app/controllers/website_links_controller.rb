class WebsiteLinksController < ApplicationController
  before_action :set_website_link, only: [:show, :edit, :update, :destroy]

  # GET /website_links
  # GET /website_links.json
  def index
    @website_links = WebsiteLink.all
  end

  # GET /website_links/1
  # GET /website_links/1.json
  def show
  end

  # GET /website_links/new
  def new
    @website_link = WebsiteLink.new
  end

  # GET /website_links/1/edit
  def edit
  end

  # POST /website_links
  # POST /website_links.json
  def create
    @website_link = WebsiteLink.new(website_link_params)

    respond_to do |format|
      if @website_link.save
        format.html { redirect_to @website_link, notice: 'Website link was successfully created.' }
        format.json { render :show, status: :created, location: @website_link }
      else
        format.html { render :new }
        format.json { render json: @website_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_links/1
  # PATCH/PUT /website_links/1.json
  def update
    respond_to do |format|
      if @website_link.update(website_link_params)
        format.html { redirect_to @website_link, notice: 'Website link was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_link }
      else
        format.html { render :edit }
        format.json { render json: @website_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_links/1
  # DELETE /website_links/1.json
  def destroy
    @website_link.destroy
    respond_to do |format|
      format.html { redirect_to website_links_url, notice: 'Website link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_link
      @website_link = WebsiteLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_link_params
      params.require(:website_link).permit(:website, :link)
    end
end
