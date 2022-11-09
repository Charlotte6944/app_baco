class PagesController < ApplicationController

  def inscription
    @user = User.new
    @saison = "2022/2023"
  end

  def recherche_joueur
    if licence_params.present?
      @num_licence = licence_params[:num_licence]
      @user = User.where(num_licence: @num_licence)[0]
    end
  end

  private

  def licence_params
    if params[:recherche_joueur].present?
      params.require(:recherche_joueur).permit(:num_licence)
    end
  end

end
