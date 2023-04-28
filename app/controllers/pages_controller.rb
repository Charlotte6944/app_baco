class PagesController < ApplicationController

  before_action :verify_admin

  def accueil
    @utilisateurs = Utilisateur.paginate(
      page: params[:page],
      per_page: 10)
    @nombre_membres = @utilisateurs.count
  end

  private

  def verify_admin
    unless current_utilisateur.admin?
      flash[:alert] = "Vous n'avez pas les droits d'administrateur."
      sign_out current_utilisateur
      redirect_to new_utilisateur_session_path
    end
  end

end
