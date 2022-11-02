class PagesController < ApplicationController

  def inscription
    @user = User.new
    @saison = "2022/2023"
  end

  def recherche_joueur
    @users = User.all
    @recherche_joueur = params["recherche_joueur"]
    if @recherche_joueur.present?
      @num_licence = @recherche_joueur["num_licence"]
      @user = User.where(num_licence: @num_licence)
    end
  end

end
