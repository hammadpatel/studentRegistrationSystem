class AcedemicrecordsController < ApplicationController
  before_action :set_acedemicrecord, only: [:show, :edit, :update, :destroy]

  # GET /acedemicrecords
  # GET /acedemicrecords.json
  def index
    @acedemicrecords = Acedemicrecord.all
  end

  # GET /acedemicrecords/1
  # GET /acedemicrecords/1.json
  def show
  end

  # GET /acedemicrecords/new
  def new
    @acedemicrecord = Acedemicrecord.new
  end

  # GET /acedemicrecords/1/edit
  def edit
  end

  # POST /acedemicrecords
  # POST /acedemicrecords.json
  def create
    @acedemicrecord = Acedemicrecord.new(acedemicrecord_params)

    respond_to do |format|
      if @acedemicrecord.save
        format.html { redirect_to more_path, notice: 'Acedemicrecord was successfully created.' }
        format.json { render :show, status: :created, location: @acedemicrecord }
      else
        format.html { render :new }
        format.json { render json: @acedemicrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acedemicrecords/1
  # PATCH/PUT /acedemicrecords/1.json
  def update
    respond_to do |format|
      if @acedemicrecord.update(acedemicrecord_params)
        format.html { redirect_to moreinfos_url, notice: 'Acedemicrecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @acedemicrecord }
      else
        format.html { render :edit }
        format.json { render json: @acedemicrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acedemicrecords/1
  # DELETE /acedemicrecords/1.json
  def destroy
    @acedemicrecord.destroy
    respond_to do |format|
      format.html { redirect_to acedemicrecords_url, notice: 'Acedemicrecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acedemicrecord
      @acedemicrecord = Acedemicrecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acedemicrecord_params
      params.require(:acedemicrecord).permit(:matriculation_olevel, :name_of_school, :school_name_of_board, :school_year_of_passing,
         :school_Discipline, :school_Subjects, :school_Grades, :Intermediate_ALevel, :name_of_school_college, :college_name_of_board, :college_year_of_passing,
         :college_Discipline, :college_Subjects, :college_Grades)
    end
end