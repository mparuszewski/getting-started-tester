require 'spec_helper'

describe 'github statistics page' do

  before do
    visit '/stats'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'GITHUB STATISTICS' }
  end

  context 'content' do
    it 'should have iframe with github statistics from planet.timvideos.us' do
      within '#main' do
        expect(page).to have_css('iframe[src="http://planet.timvideos.us/iframe/stats"]', count: 1)
      end
    end
  end
end
