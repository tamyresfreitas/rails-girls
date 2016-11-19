class IdeiaController < ApplicationController
  before_action :set_ideium, only: [:show, :edit, :update, :destroy]

  # GET /ideia
  # GET /ideia.json
  def index
    @ideia = Ideium.all
  end

  # GET /ideia/1
  # GET /ideia/1.json
  def show
  end

  # GET /ideia/new
  def new
    @ideium = Ideium.new
  end

  # GET /ideia/1/edit
  def edit
  end

  # POST /ideia
  # POST /ideia.json
  def create
    @ideium = Ideium.new(ideium_params)

    respond_to do |format|
      if @ideium.save
        format.html { redirect_to @ideium, notice: 'Ideium was successfully created.' }
        format.json { render :show, status: :created, location: @ideium }
      else
        format.html { render :new }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideia/1
  # PATCH/PUT /ideia/1.json
  def update
    respond_to do |format|
      if @ideium.update(ideium_params)
        format.html { redirect_to @ideium, notice: 'Ideium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideium }
      else
        format.html { render :edit }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideia/1
  # DELETE /ideia/1.json
  def destroy
    @ideium.destroy
    respond_to do |format|
      format.html { redirect_to ideia_url, notice: 'Ideium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideium
      @ideium = Ideium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideium_params
      params.require(:ideium).permit(:name, :description, :picture)
    end
end
