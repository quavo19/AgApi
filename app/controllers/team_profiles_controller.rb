class TeamProfilesController < ApplicationController
  before_action :set_team_profile, only: %i[show update destroy]

  # GET /team_profiles
  def index
    @team_profiles = TeamProfile.all
    render json: @team_profiles
  end

  # POST /team_profiles
  def create
    @team_profile = TeamProfile.new(team_profile_params)
    if @team_profile.save
      render json: @team_profile, status: :created, location: @team_profile
    else
      render json: @team_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_profiles/1
  def update
    if @team_profile.update(team_profile_params)
      render json: @team_profile
    else
      render json: @team_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_profiles/1
  def destroy
    @team_profile.destroy
  end

  private

  def set_team_profile
    @team_profile = TeamProfile.find(params[:id])
  end

  def team_profile_params
    params.require(:team_profile).permit(:image, :profile_name, :profile_poss, :profile_description)
  end
end
