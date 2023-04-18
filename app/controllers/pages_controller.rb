class PagesController < ApplicationController

  def accueil
    if !current_utilisateur.present?
      redirect_to new_utilisateur_session_path
    end
  end

end
