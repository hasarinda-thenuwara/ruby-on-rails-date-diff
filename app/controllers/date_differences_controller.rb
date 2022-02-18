class DateDifferencesController < ApplicationController
  before_action :set_date_difference, only: %i[ show edit update destroy ]

  # GET /date_differences or /date_differences.json
  def index
    @date_differences = DateDifference.all
  end

  # GET /date_differences/1 or /date_differences/1.json
  def show
  end

  # GET /date_differences/new
  def new
    @date_difference = DateDifference.new
  end

  # GET /date_differences/1/edit
  def edit
  end

  # POST /date_differences or /date_differences.json
  def create
    @date_difference = DateDifference.new(date_difference_params)

    respond_to do |format|
      if @date_difference.save
        format.html { redirect_to date_difference_url(@date_difference), notice: "Date difference was successfully created." }
        format.json { render :show, status: :created, location: @date_difference }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @date_difference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_differences/1 or /date_differences/1.json
  def update
    respond_to do |format|
      if @date_difference.update(date_difference_params)
        format.html { redirect_to date_difference_url(@date_difference), notice: "Date difference was successfully updated." }
        format.json { render :show, status: :ok, location: @date_difference }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @date_difference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_differences/1 or /date_differences/1.json
  def destroy
    @date_difference.destroy

    respond_to do |format|
      format.html { redirect_to date_differences_url, notice: "Date difference was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_difference
      @date_difference = DateDifference.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_difference_params
      params.require(:date_difference).permit(:date1, :date2)
    end
end
