class LootsController < ApplicationController
  require 'csv'
  require 'iconv'
  before_action :set_loot, only: [:show, :edit, :update, :destroy]

  # GET /loots
  # GET /loots.json
  def index
    @loots = Loot.paginate(page: params[:page], :per_page => 20)
    respond_to do |format|
      format.html
      format.csv { send_data @loots.to_csv }
      format.xls { send_data @loots.to_csv(col_sep: "\t") }
    end
  end

  # GET /loots/1
  # GET /loots/1.json
  def show
  end

  # GET /loots/new
  def new
    @loot = Loot.new
  end

  # GET /loots/1/edit
  def edit
  end

  # POST /loots
  # POST /loots.json
  def create
    @loot = Loot.new(loot_params)

    respond_to do |format|
      if @loot.save
        format.html { redirect_to @loot, notice: 'Loot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @loot }
      else
        format.html { render action: 'new' }
        format.json { render json: @loot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loots/1
  # PATCH/PUT /loots/1.json
  def update
    respond_to do |format|
      if @loot.update(loot_params)
        format.html { redirect_to @loot, notice: 'Loot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @loot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loots/1
  # DELETE /loots/1.json
  def destroy
    @loot.destroy
    respond_to do |format|
      format.html { redirect_to loots_url }
      format.json { head :no_content }
    end
  end

  def import
    Loot.import(params[:file])
    redirect_to loots_path, notice: "Loot imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loot
      @loot = Loot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loot_params
      params.require(:loot).permit(:name, :loot_type, :stackable, :experimental, :external_link)
    end
end
