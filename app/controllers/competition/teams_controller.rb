class Competition::TeamsController < ApplicationController

  def new
    @competition = Competition.find(params[:competition_id])
  end

  def create
    require "pry"; binding.pry
  end
end
