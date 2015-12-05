class RatedTalentsController < ApplicationController
  before_action :set_rated_talent, only: [:show, :edit, :update, :destroy]

  # GET /rated_talents
  # GET /rated_talents.json
  def index
    @rated_talents = RatedTalent.all
  end

  # GET /rated_talents/1
  # GET /rated_talents/1.json
  def show
  end

  # GET /rated_talents/new
  def new
    @rated_talent = RatedTalent.new
  end

  # GET /rated_talents/1/edit
  def edit
  end

  # POST /rated_talents
  # POST /rated_talents.json
  def create
    @rated_talent = RatedTalent.new(rated_talent_params)

    respond_to do |format|
      if @rated_talent.save
        format.html { redirect_to @rated_talent, notice: 'Rated talent was successfully created.' }
        format.json { render :show, status: :created, location: @rated_talent }
      else
        format.html { render :new }
        format.json { render json: @rated_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rated_talents/1
  # PATCH/PUT /rated_talents/1.json
  def update
    respond_to do |format|
      if @rated_talent.update(rated_talent_params)
        format.html { redirect_to @rated_talent, notice: 'Rated talent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rated_talent }
      else
        format.html { render :edit }
        format.json { render json: @rated_talent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rated_talents/1
  # DELETE /rated_talents/1.json
  def destroy
    @rated_talent.destroy
    respond_to do |format|
      format.html { redirect_to rated_talents_url, notice: 'Rated talent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rated_talent
      @rated_talent = RatedTalent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rated_talent_params
      params.require(:rated_talent).permit(:user_id, :talent_id, :rating_value)
    end
end
