require 'spec_helper'

describe 'summer-of-code page' do

  before do
    visit '/summer-of-code'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'SUMMER OF CODE' }
  end

  it 'should have edit link on icon to content editor' do
    within '#main' do
      expect(page).to have_link('', href: 'http://editor.timvideos.us/#timvideos/getting-started/edit/master/Summer-Of-Code.md')
    end
  end
end
