class PagesController < ApplicationController

  def accueil
    if current_utilisateur.admin?
      @utilisateurs = Utilisateur.all
      @nombre_membres = @utilisateurs.count
    end
  end

end
