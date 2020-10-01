class DiaController < ApplicationController
  before_action :set_dium, only: [:show, :edit, :update, :destroy]

  # GET /dia
  # GET /dia.json
  def index
    @dia = Dium.all
  end

  # GET /dia/1
  # GET /dia/1.json
  def show
  end

  # GET /dia/new
  def new
    @dium = Dium.new
  end

  # GET /dia/1/edit
  def edit
  end

  # POST /dia
  # POST /dia.json
  def create
    @dium = Dium.new(dium_params)

    respond_to do |format|
      if @dium.save
        format.html { redirect_to @dium, notice: 'Dium was successfully created.' }
        format.json { render :show, status: :created, location: @dium }
      else
        format.html { render :new }
        format.json { render json: @dium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dia/1
  # PATCH/PUT /dia/1.json
  def update
    respond_to do |format|
      if @dium.update(dium_params)
        format.html { redirect_to @dium, notice: 'Dium was successfully updated.' }
        format.json { render :show, status: :ok, location: @dium }
      else
        format.html { render :edit }
        format.json { render json: @dium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dia/1
  # DELETE /dia/1.json
  def destroy
    @dium.destroy
    respond_to do |format|
      format.html { redirect_to dia_url, notice: 'Dium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dium
      @dium = Dium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dium_params
      params.require(:dium).permit(:data)
    end
end
