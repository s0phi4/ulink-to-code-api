# frozen_string_literal: true
class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    render json: @resources
  end
end
