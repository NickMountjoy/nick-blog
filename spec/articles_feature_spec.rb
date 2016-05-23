require 'rails_helper'

feature 'articles' do
  context 'no articles have been added' do
    scenario 'should display a prompt to add an article' do
      visit '/'
      expect(page).to have_content 'No articles yet'
      expect(page).to have_link 'Add an article'
    end
  end

    context 'articles have been addded' do
      before do
        Article.create(title: 'First')
    end

    scenario 'display articles' do
      visit '/'
      expect(page).to have_content('First')
      expect(page).not_to have_content('No articles yet')
    end
  end
end
