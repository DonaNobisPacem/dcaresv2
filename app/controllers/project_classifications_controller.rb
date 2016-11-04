class ProjectClassificationsController < ApplicationController
  before_action :set_project_classification, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /project_classifications
  # GET /project_classifications.json
  def index
    @project_classifications = ProjectClassification.all
  end

  # GET /project_classifications/1
  # GET /project_classifications/1.json
  def show
  end

  # GET /project_classifications/new
  def new
    @project_classification = ProjectClassification.new
  end

  # GET /project_classifications/1/edit
  def edit
  end

  # POST /project_classifications
  # POST /project_classifications.json
  def create
    @project_classification = ProjectClassification.new(project_classification_params)

    respond_to do |format|
      if @project_classification.save
        format.html { redirect_to project_classifications_path, notice: 'Project classification was successfully created.' }
        format.json { render :show, status: :created, location: @project_classification }
      else
        format.html { render :new }
        format.json { render json: @project_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_classifications/1
  # PATCH/PUT /project_classifications/1.json
  def update
    respond_to do |format|
      if @project_classification.update(project_classification_params)
        format.html { redirect_to project_classifications_path, notice: 'Project classification was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_classification }
      else
        format.html { render :edit }
        format.json { render json: @project_classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_classifications/1
  # DELETE /project_classifications/1.json
  def destroy
    @project_classification.destroy
    respond_to do |format|
      format.html { redirect_to project_classifications_url, notice: 'Project classification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_classification
      @project_classification = ProjectClassification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_classification_params
      params.require(:project_classification).permit(:description)
    end
end
