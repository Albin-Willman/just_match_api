# frozen_string_literal: true
module Sweepers
  class CompanyImageSweeper
    def self.destroy_orphans(scope = CompanyImage)
      scope.over_aged_orphans.find_each(batch_size: 1000, &:destroy)
    end
  end
end
