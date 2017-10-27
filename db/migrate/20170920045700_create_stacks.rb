class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.integer :code          # コード
      t.string :company        # 銘柄
      t.string :market         # 市場
      t.string :sector         # セクター
      t.string :market_price   # 時価総額
      t.string :issued_stocks  # 発行株式数
      t.integer :stock_price   # 株価
      t.string :dividend       # 配当金
      t.float :industry_per    # 業種別PER
      t.string :eps            # EPS
      t.string :bps            # BPS

      t.timestamps null: false
    end
  end
end
