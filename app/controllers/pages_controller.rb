class PagesController < ApplicationController

  before_action :verify_admin, only: [:accueil]

  def accueil
    @utilisateurs = Utilisateur.select(
        [:actif,
          :role,
          :num_licence,
          :nom_usage,
          :prenom,
          :sexe,])
      .order(:nom_usage)
      .paginate(
        page: params[:page],
        per_page: 15)
    @colonnes = ['nom_usage', 'prenom', 'sexe', 'actif', 'role', 'num_licence']
    @nombre_membres = Utilisateur.all.count
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
