# frozen_string_literal: true

class TableauComponent < ViewComponent::Base
  def initialize(colonnes:, utilisateurs:)
    @colonnes = colonnes
    @utilisateurs = utilisateurs
  end
end
