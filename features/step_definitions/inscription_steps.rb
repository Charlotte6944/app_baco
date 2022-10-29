Given('je suis sur la page {string}') do |string|
  visit '/pages' + string
end

Given('je ne me suis jamais inscrit au club avec mon nom {string}') do |string|
  expect(User.find_by(nom: string)).to be_nil
end

When('je remplis le formulaire d inscription avec les valeurs suivantes:') do |table|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('l inscription est effective') do
  pending # Write code here that turns the phrase above into concrete actions
end
