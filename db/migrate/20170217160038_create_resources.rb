# frozen_string_literal: true
class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.string :tag, null: false
      t.string :content_type, null: false

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
