class WelcomController < ApplicationController
	layout 'index'
  def index
    @showoff=Mango.all
  end
end
