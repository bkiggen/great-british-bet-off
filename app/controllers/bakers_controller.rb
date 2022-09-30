# frozen_string_literal: true

# Bakers
class BakersController < ApplicationController
  before_action :set_baker, only: %i[show edit update destroy]

  # GET /bakers or /bakers.json
  def index
    @bakers = Baker.all

    render json: @bakers.to_json
  end

  # GET /bakers/1 or /bakers/1.json
  def show; end

  # GET /bakers/new
  def new
    @baker = Baker.new
  end

  # GET /bakers/1/edit
  def edit; end

  # POST /bakers or /bakers.json
  def create
    @baker = Baker.new(baker_params)

    respond_to do |format|
      if @baker.save
        format.html { redirect_to baker_url(@baker), notice: 'Baker was successfully created.' }
        format.json { render :show, status: :created, location: @baker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakers/1 or /bakers/1.json
  def update
    respond_to do |format|
      if @baker.update(baker_params)
        format.html { redirect_to baker_url(@baker), notice: 'Baker was successfully updated.' }
        format.json { render :show, status: :ok, location: @baker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakers/1 or /bakers/1.json
  def destroy
    @baker.destroy

    respond_to do |format|
      format.html { redirect_to bakers_url, notice: 'Baker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_baker
    @baker = Baker.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def baker_params
    params.fetch(:baker, {})
  end
end
