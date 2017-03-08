class SweetNothingsController < ApplicationController
  def sweet_nothings_method
    @sweet_nothing1 = SweetNothing.first
    @sweet_nothing2 = SweetNothing.second
    @sweet_nothing3 = SweetNothing.third
    @sweet_nothing4 = SweetNothing.fourth
    @sweet_nothing5 = SweetNothing.fifth
    @sweet_nothing6 = SweetNothing.sixth
    @sweet_nothings = SweetNothing.all
    render "sweet_nothings.html.erb"  
  end
end
