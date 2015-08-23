class ExhibitionsController < ApplicationController
  respond_to :html, :js, :json
  # before_filter :authenticate, :except => [:index, :lightbox]
  skip_before_filter  :verify_authenticity_token  

	def new
    @exhibition = Exhibition.new
  end

  def show
    @exhibitions = Exhibition.find(params[:id])
  end

  def create
    @exhibition = Exhibition.create(params[:exhibition])

    if @exhibition.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])

    if @exhibition.update(params[:exhibition].permit(:name, :starts_at, :ends_at, :location, :link))
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy
    redirect_to admin_path
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["ADMIN_USERNAME"] && password == ENV["ADMIN_PASSWORD"]
    end
  end

  def exhibition_params
    params.require('exhibition').permit(:name, :starts_at, :ends_at, :location, :link)
  end


end
