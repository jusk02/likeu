class UsersController < ApplicationController

	# GET /comments/1/edit
  def edit
  	@user = User.find(params[:id])
  end

  def show
      @user = User.find(params[:id])
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
  	@user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to "/ups", notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:video, :active, :fase, :id, :email)

    end

end
