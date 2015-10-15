class PlaceActivitiesController < ApplicationController
  before_action :set_place_activity, only: [:show, :update, :destroy]

  # GET /place_activities
  # GET /place_activities.json
  def index
    @place_activities = PlaceActivity.all

    render json: @place_activities
  end

  # GET /place_activities/1
  # GET /place_activities/1.json
  def show
    render json: @place_activity
  end

  # POST /place_activities
  # POST /place_activities.json
  def create
    @place_activity = PlaceActivity.new(place_activity_params)

    if @place_activity.save
      render json: @place_activity, status: :created, location: @place_activity
    else
      render json: @place_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /place_activities/1
  # PATCH/PUT /place_activities/1.json
  def update
    @place_activity = PlaceActivity.find(params[:id])

    if @place_activity.update(place_activity_params)
      head :no_content
    else
      render json: @place_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /place_activities/1
  # DELETE /place_activities/1.json
  def destroy
    @place_activity.destroy

    head :no_content
  end

  private

    def set_place_activity
      @place_activity = PlaceActivity.find(params[:id])
    end

    def place_activity_params
      params[:place_activity]
    end
end
