require 'spec_helper'

describe 'ideas page' do

  before do
    visit '/ideas'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'IDEAS' }
  end
  
  context 'content' do
    it 'should have iframe with issues from planet.timvideos.us' do
      within '#main' do
        expect(page).to have_css('iframe[src="http://planet.timvideos.us/iframe/issues"]', count: 1)
      end
    end
  end
end
