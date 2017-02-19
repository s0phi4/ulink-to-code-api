# frozen_string_literal: true
class ResourcesController < ProtectedController
  before_action :set_resource, only: [:show, :update, :destroy]
  def index
    @resources = current_user.resources.all
    render json: @resources
  end

  def show
    @resource = Resource.find(params[:id])
    render json: @resource
  end

  def create
    @resource = current_user.resources.build(resource_params)

    if @resource.save
      render json: @resource, status: :created
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def update
    if @resource.update(resource_params)
      head :no_content
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @resource.destroy

    head :no_content
  end

  def set_resource
    @resource = current_user.resources.find(params[:id])
  end

  private :set_resource

  def resource_params
    params.require(:resource).permit(:name, :url, :tag, :content_type)
  end
  private :resource_params
end
