class MedicareWebsitesController < ApplicationController
  before_action :set_medicare_website, only: %i[ show edit update destroy ]

  # GET /medicare_websites or /medicare_websites.json
  def index
    @medicare_websites = MedicareWebsite.all
  end

  # GET /medicare_websites/1 or /medicare_websites/1.json
  def show
  end

  # GET /medicare_websites/new
  def new
    @medicare_website = MedicareWebsite.new
  end

  # GET /medicare_websites/1/edit
  def edit
  end

  # POST /medicare_websites or /medicare_websites.json
  def create
    @medicare_website = MedicareWebsite.new(medicare_website_params)

    respond_to do |format|
      if @medicare_website.save
        format.html { redirect_to medicare_website_url(@medicare_website), notice: "Medicare website was successfully created." }
        format.json { render :show, status: :created, location: @medicare_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medicare_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicare_websites/1 or /medicare_websites/1.json
  def update
    respond_to do |format|
      if @medicare_website.update(medicare_website_params)
        format.html { redirect_to medicare_website_url(@medicare_website), notice: "Medicare website was successfully updated." }
        format.json { render :show, status: :ok, location: @medicare_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicare_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicare_websites/1 or /medicare_websites/1.json
  def destroy
    @medicare_website.destroy

    respond_to do |format|
      format.html { redirect_to medicare_websites_url, notice: "Medicare website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicare_website
      @medicare_website = MedicareWebsite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicare_website_params
      params.fetch(:medicare_website, {})
    end
end
