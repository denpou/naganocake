class Admin::ItemsController < ApplicationController
    def index
        @item = Item.all
    end
    
    def show
        @item = Item.find(params[:id])
    end
    
    def new
        @item = Item.new
    end
    
    def create
        item = Item.new(item_parame)
        item.save
        redlrect_to items_path
    end
    
    def edit
    end
    
    def update
    end
    
    private
     def item_params
        params.require(:item).permit(:genre_id, :name, :image_id, :introduction, :price, :is_active)
     end
end
