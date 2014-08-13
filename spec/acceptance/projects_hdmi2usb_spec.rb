require 'spec_helper'

describe 'hdmi2usb project page' do

  before do
    visit '/projects/hdmi2usb'
  end

  it_should_behave_like 'a website with sidebar' do
    let(:active_element) { 'SUMMER OF CODE' }
  end

  it 'should have edit link on icon to content editor' do
    within '#main' do
      expect(page).to have_link('', href: 'http://editor.timvideos.us/#timvideos/getting-started/edit/master/HDMI2USB.md')
    end
  end

end
