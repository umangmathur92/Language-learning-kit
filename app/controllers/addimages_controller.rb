class AddimagesController < ApplicationController
  before_action :set_addimage, only: [:show, :edit, :update, :destroy]

  # GET /addimages
  # GET /addimages.json
  def index
    @addimages = Addimage.all
  end

  # GET /addimages/1
  # GET /addimages/1.json
  def show
  end

  # GET /addimages/new
  def new
    @addimage = Addimage.new
  end

  # GET /addimages/1/edit
  def edit
  end

  # POST /addimages
  # POST /addimages.json
  def create
    @addimage = Addimage.new(addimage_params)

    respond_to do |format|
      if @addimage.save
        format.html { redirect_to @addimage, notice: 'Addimage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @addimage }
      else
        format.html { render action: 'new' }
        format.json { render json: @addimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addimages/1
  # PATCH/PUT /addimages/1.json
  def update
    respond_to do |format|
      if @addimage.update(addimage_params)
        format.html { redirect_to @addimage, notice: 'Addimage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @addimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addimages/1
  # DELETE /addimages/1.json
  def destroy
    @addimage.destroy
    respond_to do |format|
      format.html { redirect_to addimages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addimage
      @addimage = Addimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addimage_params
      params.require(:addimage).permit(:url)
    end
end
