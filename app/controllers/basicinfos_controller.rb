class BasicinfosController < ApplicationController
  before_action :set_basicinfo, only: [:show, :edit, :update, :destroy]
 before_action :require_login
 

  # GET /basicinfos
  # GET /basicinfos.json
  def index
    @basicinfos = Basicinfo.all
  end

  # GET /basicinfos/1
  # GET /basicinfos/1.json
  def show
  end

  # GET /basicinfos/new
  def new
    @basicinfo = Basicinfo.new
  end

  # GET /basicinfos/1/edit
  def edit
  end

  # POST /basicinfos
  # POST /basicinfos.json
  def create
    @basicinfo = Basicinfo.new(basicinfo_params)

    respond_to do |format|
      if @basicinfo.save
        format.html { redirect_to support_path, notice: 'Basicinfo was successfully created.' }
        format.json { render :show, status: :created, location: @basicinfo }
      else
        format.html { render :new }
        format.json { render json: @basicinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basicinfos/1
  # PATCH/PUT /basicinfos/1.json
  def update
    respond_to do |format|
      if @basicinfo.update(basicinfo_params)
        format.html { redirect_to supporters_url, notice: 'Basicinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @basicinfo }
      else
        format.html { render :edit }
        format.json { render json: @basicinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basicinfos/1
  # DELETE /basicinfos/1.json
  def destroy
    @basicinfo.destroy
    respond_to do |format|
      format.html { redirect_to supporters_url, notice: 'Basicinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basicinfo
      @basicinfo = Basicinfo.find(params[:id])
    end
private
 
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url # halts request cycle
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basicinfo_params
      params.require(:basicinfo).permit(:date_of_birth, :place_of_birth, :nationality, :gender, :telephone_res, :telephone_off,
         :cell_no, :postal_address, :city, :fathers_first_name, :fathers_last_name, :fathers_nic, :fathers_mobile_no)
    end
end
