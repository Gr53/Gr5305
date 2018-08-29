class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /api/v1/users
  def index
    users=User.order('created_at DESC');
    render json: {status: 'SUCCESS', message: 'Loaded users successfully', data: users}, status: :ok

  end

  # GET /api/v1/users/1
  def show
    user=User.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded user '  + params[:id]+ 'successfully', data: user}, status: :ok

  end

  # POST /api/v1/users
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created, location: user
    else
      render json: ser.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/users/1
  def update
    if user.update(_user_params)
       render json: {status: 'SUCCESS', message: 'user updated successfully', data: user}, status: :ok

    else
      render json: {status: 'UNSUCCESS', message: 'error',data: user.errors}, status: :unprocessable_entity

    end
  end

  # DELETE /api/v1/users/1
  def destroy
    user=User.find(params[:id])
    user.destroy
    render json: {status: 'SUCCESS', message: 'eliminado', data: user}, status: :ok

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:identification, :names, :last_names, :email, :password)
    end
end
