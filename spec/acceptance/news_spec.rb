require 'spec_helper'

describe 'news page' do

  before do
    visit '/news'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'NEWS' }
  end

  context 'content' do
    it 'should have iframe with news from planet.timvideos.us' do
      within '#main' do
        expect(page).to have_css('iframe[src="http://planet.timvideos.us/iframe"]', count: 1)
      end
    end
  end
end
