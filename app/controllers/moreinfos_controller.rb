class MoreinfosController < ApplicationController
  before_action :set_moreinfo, only: [:show, :edit, :update, :destroy]

  # GET /moreinfos
  # GET /moreinfos.json
  def index
    @moreinfos = Moreinfo.all
  end

  # GET /moreinfos/1
  # GET /moreinfos/1.json
  def show
  end

  # GET /moreinfos/new
  def new
    @moreinfo = Moreinfo.new
  end

  # GET /moreinfos/1/edit
  def edit
  end

  # POST /moreinfos
  # POST /moreinfos.json
  def create
    @moreinfo = Moreinfo.new(moreinfo_params)

    respond_to do |format|
      if @moreinfo.save
        format.html { redirect_to root_path, notice: 'Moreinfo was successfully created.' }
        format.json { render :show, status: :created, location: @moreinfo }
      else
        format.html { render :new }
        format.json { render json: @moreinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moreinfos/1
  # PATCH/PUT /moreinfos/1.json
  def update
    respond_to do |format|
      if @moreinfo.update(moreinfo_params)
        format.html { redirect_to @moreinfo, notice: 'Moreinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @moreinfo }
      else
        format.html { render :edit }
        format.json { render json: @moreinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moreinfos/1
  # DELETE /moreinfos/1.json
  def destroy
    @moreinfo.destroy
    respond_to do |format|
      format.html { redirect_to moreinfos_url, notice: 'Moreinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moreinfo
      @moreinfo = Moreinfo.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def moreinfo_params
      params.require(:moreinfo).permit(:Have_you_studied_at_KU_before?, :Please_list_all_awards_scholastic_honors_scholarships_publications_activities_and_other_achievements,
         :Extra_curricular_activities_hobbies, :Have_you_ever_been_convicted_by_a_court_of_law_or_sentenced_to_a_prison_if_Yes_then_provide_details,
          :Have_you_received_psychiatric_treatment_of_any_kind_in_the_past_If_Yes_then_provide_details)
    end
end
