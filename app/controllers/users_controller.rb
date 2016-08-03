class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def after_sign_up_path_for(resource)
    '/quieroserliker' # Or :prefix_to_your_route
  end
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
        format.html { redirect_to edit_user_path, notice: 'user was successfully updated.' }
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
      params.require(:user).permit(:video, :active, :fase, :id, :city, :name, :age, :gender, :cellphone, :ocupation,
      :no_contract_activities, :felixibility_importance, :need_income, :current_income, :achievement, :achievement_acomplishment, :achievement_company,
      :achievement_boss, :achievement_phone, :hobby, :hobby_time, :hobby_validate, :special_experience, :work_hours, :work_days, :personal_achievement, :story, :pc_type, :pc_use, :internet_speed, :can_talk, :workplace, :comfort, :role, :video, :fase ,:confirmation_token,:confirmed_at,:confirmation_sent_at,:confirmation_token, :video_done, :active, :approved )

    end

end
