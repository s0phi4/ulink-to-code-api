# frozen_string_literal: true
class ResourcesController < ApplicationController
  def index
    @resource = Resource.all
    render json: @resource
  end
end
