# frozen_string_literal: true
class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.string :tag
      t.string :content_type

      t.timestamps
    end
  end
end
