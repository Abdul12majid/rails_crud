class CrudModelsController < ApplicationController
  before_action :set_crud_model, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new update destroy ]

  # GET /crud_models or /crud_models.json
  def index
    @crud_models = CrudModel.all
  end

  # GET /crud_models/1 or /crud_models/1.json
  def show
  end

  # GET /crud_models/new
  def new
    @crud_model = CrudModel.new
  end

  # GET /crud_models/1/edit
  def edit
  end


  # POST /crud_models or /crud_models.json
  def create
    @crud_model = CrudModel.new(crud_model_params)

    respond_to do |format|
      if @crud_model.save
        format.html { redirect_to @crud_model, notice: "Crud model was successfully created." }
        format.json { render :show, status: :created, location: @crud_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crud_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crud_models/1 or /crud_models/1.json
  def update
    respond_to do |format|
      if @crud_model.update(crud_model_params)
        format.html { redirect_to @crud_model, notice: "Crud model was successfully updated." }
        format.json { render :show, status: :ok, location: @crud_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crud_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crud_models/1 or /crud_models/1.json
  def destroy
    @crud_model.destroy!

    respond_to do |format|
      format.html { redirect_to crud_models_path, status: :see_other, notice: "Crud model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crud_model
      @crud_model = CrudModel.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def crud_model_params
      params.expect(crud_model: [ :first_name, :last_name, :email, :phone, :user_id ])
    end
end
