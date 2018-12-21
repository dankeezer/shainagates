class CurriculumVitaesController < ApplicationController
  def index
    @cv = CurriculumVitae.order("published_at DESC")
  end

  def show
    @cv = CurriculumVitae.find(params[:id])
  end
end
