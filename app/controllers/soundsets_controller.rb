class SoundsetsController < ApplicationController
  before_action :set_soundset, only: [:show, :edit, :update, :destroy]

  # GET /soundsets
  # GET /soundsets.json
  def index
    @soundsets = Soundset.all
  end

  # GET /soundsets/1
  # GET /soundsets/1.json
  def show
    @soundsets = Soundset.all
  end

  # GET /soundsets/new
  def new
    @soundset = Soundset.new
  end

  # GET /soundsets/1/edit
  def edit
  end

  # POST /soundsets
  # POST /soundsets.json
  def create
    @soundset = Soundset.new(soundset_params)

    respond_to do |format|
      if @soundset.save
        format.html { redirect_to @soundset, notice: 'Soundset was successfully created.' }
        format.json { render :show, status: :created, location: @soundset }
      else
        format.html { render :new }
        format.json { render json: @soundset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soundsets/1
  # PATCH/PUT /soundsets/1.json
  def update
    respond_to do |format|
      if @soundset.update(soundset_params)
        format.html { redirect_to @soundset, notice: 'Soundset was successfully updated.' }
        format.json { render :show, status: :ok, location: @soundset }
      else
        format.html { render :edit }
        format.json { render json: @soundset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soundsets/1
  # DELETE /soundsets/1.json
  def destroy
    @soundset.destroy
    respond_to do |format|
      format.html { redirect_to soundsets_url, notice: 'Soundset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundset
      @soundset = Soundset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soundset_params
      params.require(:soundset).permit(:name, :remove_soundset, sounds: [])
    end


end
