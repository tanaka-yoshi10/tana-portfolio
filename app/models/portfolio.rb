class Portfolio < ApplicationRecord
  extend Enumerize

  enumerize :area, in: %i(japan emerging developed), scope: true
  enumerize :category, in: %i(stock bond reit), scope: true

  def self.area_text(value)
    # TODO: Enumerizeで何かあるのでは？
    Portfolio.area.options.find{|k,v| v == value }[0]
  end

  def self.category_text(value)
    Portfolio.category.options.find{|k,v| v == value }[0]
  end
end
