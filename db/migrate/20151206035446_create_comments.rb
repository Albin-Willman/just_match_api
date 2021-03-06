# frozen_string_literal: true
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :commentable, polymorphic: true, index: true, unique: true

      t.integer :owner_user_id

      t.timestamps null: false
    end
  end
end
