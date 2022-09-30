class RankingsController < ApplicationController
  # GET /rankings
  def index
    render json: { hey: "hey"}
  end

  # POST /rankings
  def create
    binding.pry
  end
end
