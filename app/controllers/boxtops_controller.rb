class BoxtopsController < ApplicationController
  def update
    @boxtop = Boxtop.find(hidden_code: params[:hidden_code])
    if @boxtop.student_id == nil
      @boxtop.student_id = sessions[:id]
      render status: 200
    else
      redirect_to :back, status: 401 #unauthorized to use the same code multiple times
    end
  end
end
