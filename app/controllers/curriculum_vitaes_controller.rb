class CurriculumVitaesController < ApplicationController
  def edit
    @cv = CurriculumVitae.first
  end

  def update
    @cv = CurriculumVitae.first

    if @cv.update(params[:curriculum_vitae].permit(:title, :body))
      redirect_to admin_path
    else
      render :edit
    end
  end

  private

  def artwork_params
    params.require('cv').permit(:title, :body)
  end
end
