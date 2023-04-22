Given('utilisateur se connectant') do |table|
  @utilisateurs = []
  table.hashes.each do |hash|
    @utilisateur = Utilisateur.create!(hash)
    @utilisateurs << @utilisateur
  end
end

When('je suis sur la page accueil') do
  visit root_path
end

Then('je vois le tableau de tous les utilisateurs') do
  expect(page).to have_content(@utilisateurs)
end
