class PagesController < ApplicationController

  def inscription
    @user = User.new
    @saison = "2022/2023"
  end

  def recherche_joueur
  end

end
