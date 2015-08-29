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

  def name_by_kind(kind)
    Kind.constants.each do |kind_name|
      if Kind.const_get(kind_name) == kind
        return kind_name
      end
    end
  end

  class << self
    def each_kind
      lean_canvas_items_map = {}
      Kind.constants.each do |kind_name|
        lean_canvas_items_map[kind_name] ||= []
        lean_canvas_items = where(kind: Kind.const_get(kind_name))
        if lean_canvas_items
          lean_canvas_items.each do |lean_canvas_item|
            lean_canvas_items_map[kind_name] << lean_canvas_item
          end
        end
      end
      lean_canvas_items_map
    end
  end
end
