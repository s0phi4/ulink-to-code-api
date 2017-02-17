# frozen_string_literal: true
class Resource < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  validates :tag, presence: true
  validates :content_type, presence: true
end
