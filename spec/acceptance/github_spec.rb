require 'spec_helper'

describe 'github activities page' do

  before do
    visit '/github'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'GITHUB ACTIVITIES' }
  end

  context 'content' do
    it 'should have iframe with github activities from planet.timvideos.us' do
      within '#main' do
        expect(page).to have_css('iframe[src="http://planet.timvideos.us/iframe/github"]', count: 1)
      end
    end
  end
end
