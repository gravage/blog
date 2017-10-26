class MoussaillonsController < ApplicationController
	def index 
	end

	def new
		@moussaillon= Moussaillon.new
	end

def create
  @moussaillon = Moussaillon.create(moussaillon_params)
  	if @moussaillon.save
  		redirect_to @moussaillon
  	else 
  		render 'new'
end 
end

  def edit 
    @moussaillon = Moussaillon.find(params[:id])
  end

  def update 
    @gmoussaillon = Moussaillon.find(params[:id])
    if @Moussaillon.update(moussaillon_params)
      redirect_to @moussaillon
      else 
      render 'edit'
 end
end


def show
  @moussaillon = Moussaillon.find(params[:id])
end

private
   def moussaillon_params
   params.permit(:bio, :username, :email)
  end

end


