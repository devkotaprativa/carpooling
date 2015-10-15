class CarpoolController < ApplicationController
  def index
  	@carpool = Carpool.all
  end
end
