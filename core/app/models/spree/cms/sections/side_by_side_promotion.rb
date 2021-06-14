module Spree::Cms::Sections
  class SideBySidePromotion < Spree::CmsSection
    after_initialize :default_values

    store :content, accessors: [:permalink_one, :title_one, :subtitle_one,
                                :permalink_two, :title_two, :subtitle_two], coder: JSON
    store :settings, accessors: [:gutters], coder: JSON

    def gutters_sizes
      ['Use gutters', 'No Gutters']
    end

    def gutters?
      gutters == 'Use gutters'
    end

    private

    def default_values
      self.fit ||= 'Container'
    end
  end
end
