class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :area
      t.string :category
      t.integer :ratio

      t.timestamps
    end
  end
end
