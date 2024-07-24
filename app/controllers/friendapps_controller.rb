class FriendappsController < ApplicationController
  before_action :set_friendapp, only: %i[ show edit update destroy ]

  # GET /friendapps or /friendapps.json
  def index
    @friendapps = Friendapp.all
  end

  # GET /friendapps/1 or /friendapps/1.json
  def show
  end

  # GET /friendapps/new
  def new
    @friendapp = Friendapp.new
  end

  # GET /friendapps/1/edit
  def edit
  end

  # POST /friendapps or /friendapps.json
  def create
    @friendapp = Friendapp.new(friendapp_params)

    respond_to do |format|
      if @friendapp.save
        format.html { redirect_to friendapp_url(@friendapp), notice: "Friendapp was successfully created." }
        format.json { render :show, status: :created, location: @friendapp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendapps/1 or /friendapps/1.json
  def update
    respond_to do |format|
      if @friendapp.update(friendapp_params)
        format.html { redirect_to friendapp_url(@friendapp), notice: "Friendapp was successfully updated." }
        format.json { render :show, status: :ok, location: @friendapp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendapps/1 or /friendapps/1.json
  def destroy
    @friendapp.destroy!

    respond_to do |format|
      format.html { redirect_to friendapps_url, notice: "Friendapp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendapp
      @friendapp = Friendapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendapp_params
      params.require(:friendapp).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
