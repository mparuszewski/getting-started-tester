require 'spec_helper'

describe 'people page' do

  before do
    visit '/people'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'PEOPLE' }
  end

  context 'content' do
    it 'should have iframe with people from planet.timvideos.us' do
      within '#main' do
        expect(page).to have_css('iframe[src="http://planet.timvideos.us/iframe/people"]', count: 1)
      end
    end
  end
end
