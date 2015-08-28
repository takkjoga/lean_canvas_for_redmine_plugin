class LeanCanvasItem < ActiveRecord::Base
  unloadable

  module Kind
    PROBLEM                   = 1  # 課題
    CUSTOMER_SEGMENTS         = 2  # 顧客セグメント
    UNIQUE_VALUE_PROPOSITION  = 3  # 独自の価値提案
    SOLUTION                  = 4  # ソリューション
    CHANNELS                  = 5  # チャネル
    REVENUE_STREAMS           = 6  # 収益の流れ
    COST_STRUCTURE            = 7  # コスト構造
    KEY_METRICS               = 8  # 主要指標
    UNFAIR_ADVANTAGE          = 9  # 圧倒的な優位性
  end
end
