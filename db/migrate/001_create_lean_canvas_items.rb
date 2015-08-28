class CreateLeanCanvasItems < ActiveRecord::Migration
  def change
    create_table :lean_canvas_items do |t|
      t.integer :kind
      t.text :value
    end
  end
end
