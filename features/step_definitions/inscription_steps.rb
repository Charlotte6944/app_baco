Given('je suis sur la page {string}') do |string|
  visit '/pages' + string
end

Given('je ne me suis jamais inscrit au club avec mon nom {string}') do |string|
  expect(User.find_by(nom: string)).to be_nil
end

When('je remplis le formulaire d inscription avec les valeurs suivantes:') do |table|
  # table.hashes.each do |hash|
  #   fill_in 'nom', with: hash['nom']
  #   fill_in 'prenom', with: hash['prenom']
  #   fill_in 'email', with: hash['email']
  #   fill_in 'date_naissance', with: hash['date_naissance']
  #   fill_in 'num_tel', with: hash['num_tel']
  #   fill_in 'num_licence', with: hash['num_licence']
  #   fill_in 'sexe', with: hash['sexe']
  # end
  pending # Write code here that turns the phrase above into concrete actions
end

Then('l inscription est effective') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('je recois un mail de confirmation') do
  pending # Write code here that turns the phrase above into concrete actions
end
