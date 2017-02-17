# frozen_string_literal: true
class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :tag, :content_type
end
