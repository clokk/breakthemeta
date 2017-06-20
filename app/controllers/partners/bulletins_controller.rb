class Partners::BulletinsController < ApplicationController
  before_action :set_bulletin, only: [:show, :edit, :update, :destroy]
  before_action :set_partner, only: [:show, :new, :edit, :create, :update, :destroy]
  def show
  end

  def new
    @bulletin = Bulletin.new
  end

  def edit
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    @bulletin.partner_id = @partner.id

    respond_to do |format|
      if @bulletin.save
        format.html { redirect_to partner_url(@bulletin.partner_id), notice: "Bulletin was created succesfully!"}
        format.json { render :show, status: :created, location: @bulletin }
      else
        format.html { render :new }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
    end
  end
end

  def update
    respond_to do |format|
      if @bulletin.update(bulletin_params)
        format.html { redirect_to partner_url(@bulletin.partner_id), notice: "Bulletin was updated succesfully!"}
        format.json { render :show, status: :created, location: @bulletin }
      else
        format.html { render :edit }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @bulletin.destroy
  respond_to do |format|
    format.html { redirect_to partner_url(@bulletin.partner_id), notice: "Bulletin was destroyed succesfully!"}
    format.json { head :no_content }
  end
end

private

  def set_bulletin
    @bulletin = Bulletin.find(params[:id])
  end

  def set_partner
    @partner = Partner.find(params[:partner_id])
  end

  def bulletin_params
    params.require(:bulletin).permit(:name, :description, :partner_id, :bulletin_file)
  end
end