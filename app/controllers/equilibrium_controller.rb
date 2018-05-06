class EquilibriumController < ApplicationController
  def new
  end
  
  def create
    array_string = params[:equilibrium][:array_string]
    puts array_string
    @ans = EquilibriumHelper.check_equilibrium(array_string)
  end
end
