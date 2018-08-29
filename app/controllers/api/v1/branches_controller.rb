class Api::V1::BranchesController < ApplicationController
  before_action :set_branch, only: [:show, :edit, :update, :destroy]
 

  # GET /api/v1/branches
  def index
    branches=Branch.order('created_at DESC');
    render json: {status: 'SUCCESS', message: 'Loaded branches successfully', data: branches}, status: :ok

  end

  # GET /api/v1/branches/1
  def show
    branch=Branch.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded branch '  + params[:id]+ 'successfully', data: branch}, status: :ok

  end

  # POST /api/v1/branches
  def create
    branch = Branch.new(branch_params)

    if branch.save
      render json: branch, status: :created, location: branch
    else
      render json: ser.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/branches/1
  def update
    if branch.update(_branch_params)
       render json: {status: 'SUCCESS', message: 'branch updated successfully', data: branch}, status: :ok

    else
      render json: {status: 'UNSUCCESS', message: 'error',data: branch.errors}, status: :unprocessable_entity

    end
  end

  # DELETE /api/v1/branches/1
  def destroy
    branch=Branch.find(params[:id])
    branch.destroy
    render json: {status: 'SUCCESS', message: 'eliminado', data: branch}, status: :ok

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch
      branch = Branch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
   def branch_params
      params.permit(:branch).permit(:name, :locality, :address, :location_map, :institution_id)
    end
end
