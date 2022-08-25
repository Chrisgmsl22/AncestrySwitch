class NodehijosController < ApplicationController
  before_action :set_nodehijo, only: %i[ show edit update destroy ]

  # GET /nodehijos or /nodehijos.json
  def index
    @nodehijos = Nodehijo.all
  end

  # GET /nodehijos/1 or /nodehijos/1.json
  def show
  end

  # GET /nodehijos/new
  def new
    @nodehijo = Nodehijo.new
  end

  # GET /nodehijos/1/edit
  def edit
  end

  # POST /nodehijos or /nodehijos.json
  def create
    @nodehijo = Nodehijo.new(nodehijo_params)

    respond_to do |format|
      if @nodehijo.save
        format.html { redirect_to nodehijo_url(@nodehijo), notice: "Nodehijo was successfully created." }
        format.json { render :show, status: :created, location: @nodehijo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nodehijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodehijos/1 or /nodehijos/1.json
  def update
    respond_to do |format|
      if @nodehijo.update(nodehijo_params)
        format.html { redirect_to nodehijo_url(@nodehijo), notice: "Nodehijo was successfully updated." }
        format.json { render :show, status: :ok, location: @nodehijo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nodehijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodehijos/1 or /nodehijos/1.json
  def destroy
    @nodehijo.destroy

    respond_to do |format|
      format.html { redirect_to nodehijos_url, notice: "Nodehijo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nodehijo
      @nodehijo = Nodehijo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nodehijo_params
      params.require(:nodehijo).permit(:title, :description, :papa)
    end
end
