# frozen_string_literal: true
class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    render json: @resources
  end

  def show
    @resource = Resource.find(params[:id])
    render json: @resource
  end

  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      render json: @resource, status: :created
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def resource_params
    params.require(:resource).permit(:name, :url, :tag, :content_type)
  end
  private :resource_params
end
