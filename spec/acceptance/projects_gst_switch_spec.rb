require 'spec_helper'

describe 'gst-switch project page' do

  before do
    visit '/projects/gst-switch'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'HOME' }
  end

  it 'should have edit link on icon to content editor' do
    within '#main' do
      expect(page).to have_link('', href: 'http://editor.timvideos.us/#timvideos/getting-started/edit/master/gst-switch.md')
    end
  end

end
