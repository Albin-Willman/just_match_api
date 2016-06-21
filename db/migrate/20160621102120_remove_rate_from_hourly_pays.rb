# frozen_string_literal: true
class RemoveRateFromHourlyPays < ActiveRecord::Migration
  def change
    remove_column :hourly_pays, :rate, :integer
  end
end
