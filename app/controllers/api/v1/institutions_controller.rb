class Api::V1::InstitutionsController < ApplicationController
  before_action :set_institution, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/institutions
  def index
    institutions=Institution.order('created_at DESC');
    render json: {status: 'SUCCESS', message: 'Loaded institutions successfully', data: institutions}, status: :ok

  end

  # GET /api/v1/institutions/1
  def show
    institution=Institution.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded institution '  + params[:id]+ 'successfully', data: institution}, status: :ok

  end

  # POST /api/v1/institutions
  def create
    institution = Institution.new(institution_params)

    if institution.save
      render json: institution, status: :created, location: institution
    else
      render json: ser.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/institutions/1
  def update
    if institution.update(_institution_params)
       render json: {status: 'SUCCESS', message: 'institution updated successfully', data: institution}, status: :ok

    else
      render json: {status: 'UNSUCCESS', message: 'error',data: institution.errors}, status: :unprocessable_entity

    end
  end

  # DELETE /api/v1/institutions/1
  def destroy
    institution=Institution.find(params[:id])
    institution.destroy
    render json: {status: 'SUCCESS', message: 'eliminado', data: institution}, status: :ok

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      institution = Institution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.

    def institution_params
      params.permit(:institution).permit(:name, :description, :character, :address, :phones, :website, :email)
    end
end
