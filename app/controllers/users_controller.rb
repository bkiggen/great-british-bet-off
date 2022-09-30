# frozen_string_literal: true

# Users
class UsersController < ApplicationController

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show; end

  # POST /users or /users.json
  def create
    binding.pry
    # @user = User.new(user_params)
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    # @user.update
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    # @user.destroy
  end

  private

  def user_params
    params.fetch(:user, {})
  end
end
