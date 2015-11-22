class ContactsController < ApplicationController

  def create
    @village = Village.find(params[:village_id])
    @contact = @village.contacts.create(contact_params)
    redirect_to village_path(@village)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :mobile, :email, :title_id, :admin, :position_id, :village_id)
  end

end
