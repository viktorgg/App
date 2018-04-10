class SubsusersController < ApplicationController
  before_action :set_subsuser, only: [:show, :edit, :update, :destroy]

  # GET /subsusers
  # GET /subsusers.json
  def index
    @subsusers = Subsuser.all
  end

  # GET /subsusers/1
  # GET /subsusers/1.json
  def show
  end

  # GET /subsusers/new
  def new
    @subsuser = Subsuser.new
  end

  # GET /subsusers/1/edit
  def edit
  end

  # POST /subsusers
  # POST /subsusers.json
  def create
    @subsuser = Subsuser.new(subsuser_params)

    respond_to do |format|
      if @subsuser.save
        format.html { redirect_to @subsuser, notice: 'Subsuser was successfully created.' }
        format.json { render :show, status: :created, location: @subsuser }
      else
        format.html { render :new }
        format.json { render json: @subsuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subsusers/1
  # PATCH/PUT /subsusers/1.json
  def update
    respond_to do |format|
      if @subsuser.update(subsuser_params)
        format.html { redirect_to @subsuser, notice: 'Subsuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @subsuser }
      else
        format.html { render :edit }
        format.json { render json: @subsuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsusers/1
  # DELETE /subsusers/1.json
  def destroy
    @subsuser.destroy
    respond_to do |format|
      format.html { redirect_to subsusers_url, notice: 'Subsuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsuser
      @subsuser = Subsuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subsuser_params
      params.require(:subsuser).permit(:userid, :subsid, :type)
    end
end
