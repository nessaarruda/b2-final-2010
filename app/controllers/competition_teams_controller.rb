class CompetitionTeamsController < ApplicationController

  def create
    require "pry"; binding.pry
    @competition = Competition.find(params[:competition_id])
  end

  def new
    @competition = Competition.find(params[:competition_id])
  end
end
