class ProfileController < ApplicationController
  def show
  	@profile = current_user.profile
  end

  def edit
  	@profile = current_user.profile
  end

 # PUT /profils/1
  # PUT /profils/1.json
  def update
    @profil = current_user.profile

    respond_to do |format|
      if @profil.update_attributes(params[:profile])
        format.html { redirect_to @profil, notice: 'Profil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profil.errors, status: :unprocessable_entity }
      end
    end
  end


end
