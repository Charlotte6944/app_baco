Given('les utilisateurs suivants existent:') do |table|
  @utilisateurs = []
  table.hashes.each do |utilisateur|
    @utilisateurs << Utilisateur.create!(utilisateur)
  end
end

Given('Je suis sur la page de connexion') do
  visit new_utilisateur_session_path
end

When('Je remplis le formulaire avec des données valides admin') do
  @utilisateurs.each do |utilisateur|
    if utilisateur.role == 'admin'
      fill_in 'email', :with => utilisateur.email
      fill_in 'password', :with => utilisateur.password
    end
  end
end

When('Je remplis le formulaire avec des données valides joueur') do
  @utilisateurs.each do |utilisateur|
    if utilisateur.role == 'joueur'
      fill_in 'email', :with => utilisateur.email
      fill_in 'password', :with => utilisateur.password
    end
  end
end

When('Je clique sur le bouton {string}') do |string|
  click_on string
end

When('Je remplis le formulaire avec des données non valides') do
  fill_in 'email', :with => 'email@false.com'
  fill_in 'password', :with => 'password'
end

Then('je suis dirigé vers la page d accueil') do
  expect(page).to have_current_path(accueil_path)
end

Then('je vois un message d erreur') do
  expect(page).to have_content("Invalid Email or password.")
end

Then('je vois un message d erreur {string}') do |string|
  expect(page).to have_current_path(new_utilisateur_session_path)
  expect(page).to have_content(string)
end
