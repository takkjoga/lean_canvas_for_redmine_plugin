class LeanCanvasItemsController < ApplicationController
  unloadable

  def index
    @lean_canvas_items_map = LeanCanvasItem.each_kind
  end

  def create
    @lean_canvas_item = LeanCanvasItem.new(lean_canvas_item_params)
    @lean_canvas_item.save
    redirect_to action: "index"
  end

  def update
    @lean_canvas_item = LeanCanvasItem.find(params[:id])
    @lean_canvas_item.update(lean_canvas_item_params)
    redirect_to action: "index"
  end

  def destroy
    @lean_canvas_item = LeanCanvasItem.find(params[:id])
    @lean_canvas_item.destroy
    redirect_to action: "index"
  end

  def lean_canvas
    @lean_canvas_items_map = LeanCanvasItem.each_kind
    respond_to do |format|
      format.svg
    end
  end

  private
  def lean_canvas_item_params
    params.require(:lean_canvas_item).permit(:kind, :value)
  end
end
