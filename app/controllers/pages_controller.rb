class PagesController < ApplicationController

  def inscription
    @user = User.new
    @saison = "2022/2023"
  end

  def recherche_joueur
    if licence_params.present?
      if licence_params[:num_licence].length == 8
        @num_licence = licence_params[:num_licence]
        @user = User.where(num_licence: @num_licence)[0]
      else
        @message = "Aucun joueur trouvé avec ce numéro de licence"
      end
    end
  end

  def inscription_form
  end

  private

  def licence_params
    if params[:recherche_joueur].present?
      params.require(:recherche_joueur).permit(:num_licence)
    end
  end

  # def inscription_params
  #   if params[:inscription_saison].present?
  #     params.require(:inscription_saison).permit()
  #   end
  # end

end
