class OwnershipsController < ApplicationController
  before_action :set_ownership, only: %i[ show edit update destroy ]

  # GET /ownerships or /ownerships.json
  def index
    @ownerships = Ownership.all
  end

  # GET /ownerships/1 or /ownerships/1.json
  def show
  end

  # GET /ownerships/new
  def new
    @ownership = Ownership.new
  end

  # GET /ownerships/1/edit
  def edit
  end

  # POST /ownerships or /ownerships.json
  def create
    @ownership = Ownership.new(ownership_params)

    respond_to do |format|
      if @ownership.save
        format.html { redirect_to ownership_url(@ownership), notice: "Ownership was successfully created." }
        format.json { render :show, status: :created, location: @ownership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ownerships/1 or /ownerships/1.json
  def update
    respond_to do |format|
      if @ownership.update(ownership_params)
        format.html { redirect_to ownership_url(@ownership), notice: "Ownership was successfully updated." }
        format.json { render :show, status: :ok, location: @ownership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ownership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ownerships/1 or /ownerships/1.json
  def destroy
    @ownership.destroy!

    respond_to do |format|
      format.html { redirect_to ownerships_url, notice: "Ownership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ownership
      @ownership = Ownership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ownership_params
      params.require(:ownership).permit(:owner_id, :house_id)
    end
end
