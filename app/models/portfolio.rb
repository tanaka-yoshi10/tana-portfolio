class Portfolio < ApplicationRecord
  extend Enumerize

  enumerize :area, in: %i(japan emerging developed)
  enumerize :category, in: %i(stock bond reit)
end
