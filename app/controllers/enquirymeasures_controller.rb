class EnquirymeasuresController < ApplicationController
  before_action :set_enquirymeasure, only: [:show, :edit, :update, :destroy]

  # GET /enquirymeasures
  # GET /enquirymeasures.json
  def index
    @enquirymeasures = Enquirymeasure.all
  end

  # GET /enquirymeasures/1
  # GET /enquirymeasures/1.json
  def show
  end

  # GET /enquirymeasures/new
  def new
    @enquirymeasure = Enquirymeasure.new
  end

  # GET /enquirymeasures/1/edit
  def edit
  end

  # POST /enquirymeasures
  # POST /enquirymeasures.json
  def create
    @enquirymeasure = Enquirymeasure.new(enquirymeasure_params)

    respond_to do |format|
      if @enquirymeasure.save
        format.html { redirect_to @enquirymeasure, notice: 'Enquirymeasure was successfully created.' }
        format.json { render :show, status: :created, location: @enquirymeasure }
      else
        format.html { render :new }
        format.json { render json: @enquirymeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquirymeasures/1
  # PATCH/PUT /enquirymeasures/1.json
  def update
    respond_to do |format|
      if @enquirymeasure.update(enquirymeasure_params)
        format.html { redirect_to @enquirymeasure, notice: 'Enquirymeasure was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquirymeasure }
      else
        format.html { render :edit }
        format.json { render json: @enquirymeasure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquirymeasures/1
  # DELETE /enquirymeasures/1.json
  def destroy
    @enquirymeasure.destroy
    respond_to do |format|
      format.html { redirect_to enquirymeasures_url, notice: 'Enquirymeasure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquirymeasure
      @enquirymeasure = Enquirymeasure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enquirymeasure_params
      params.require(:enquirymeasure).permit(:enquiry_id, :done, :needed, :responsible)
    end
end
