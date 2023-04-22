class PagesController < ApplicationController

  def accueil
    if current_utilisateur.admin?
      @utilisateurs = Utilisateur.all
    end
  end

end
