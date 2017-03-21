class SweetNothingsController < ApplicationController
  def index
    sort_attribute = params[:sort_by] || "id"
    sort_attribute_order = params[:order_by] || "asc"
    @sweet_nothings = SweetNothing.all.order(sort_attribute => sort_attribute_order)
    render "index.html.erb"  
  end
  def new
    render "new.html.erb"
  end
  def search
    @products = Product.where("name LIKE ?", "%" + params[:form_name] + "%")
    render "index.html.erb"
  end
  def create
    sweet_nothing = SweetNothing.new(
      name: params[:form_name],
      image: params[:form_image],
      description: params[:form_description]
      )
    sweet_nothing.save
    redirect_to "index.html.erb"
  end
  def show
    @sweet_nothing_id = params[:id]
    @sweet_nothing = SweetNothing.find_by(id: @sweet_nothing_id)
    render "show.html.erb"
  end
  def edit
    sweet_nothing_id = params[:id]
    @sweet_nothing = SweetNothing.find_by(id: sweet_nothing_id)
    render "edit.html.erb"
  end
  def update
    sweet_nothing_id = params[:id]
    @sweet_nothing = SweetNothing.find_by(id: sweet_nothing_id)    
    @sweet_nothing.name = params[:form_name]
    @sweet_nothing.image = params[:form_image]
    @sweet_nothing.description = params[:form_description]
    @sweet_nothing.save
    redirect_to "index.html.erb"
  end
  def destory
    sweet_nothing_id = params[:id]
    sweet_nothing = SweetNothing.find_by(id: sweet_nothing_id)
    sweet_nothing.destroy
    render "destroy.html.erb"

  end
  def random
    sweet_nothing = SweetNothing.pluck(:id).shuffle[1]
    @random_sweet_nothing = SweetNothing.find_by(id: sweet_nothing)
    render "random.html.erb"
  end
end
