require 'spec_helper'

describe 'index page' do

  context 'sidebar' do

    before do
      visit '/'
    end

    it 'should exist' do
      expect(page).to have_css('#sidebar')
    end

    it 'should contain HOME link' do
      within '#sidebar' do
        expect(page).to have_link('HOME', href: '/home/')
      end
    end

    it 'should contain IDEAS link' do
      within '#sidebar' do
        expect(page).to have_link('IDEAS', href: '/ideas/')
      end
    end

    it 'should contain NEWS link' do
      within '#sidebar' do
        expect(page).to have_link('NEWS', href: '/news/')
      end
    end

    it 'should contain SUMMER OF CODE link' do
      within '#sidebar' do
        expect(page).to have_link('SUMMER OF CODE', href: '/summer-of-code/')
      end
    end

    it 'should contain GITHUB STATISTICS link' do
      within '#sidebar' do
        expect(page).to have_link('GITHUB STATISTICS', href: '/stats/')
      end
    end

    it 'should contain GITHUB ACTIVITIES link' do
      within '#sidebar' do
        expect(page).to have_link('GITHUB ACTIVITIES', href: '/github/')
      end
    end

    it 'should contain logo' do
      within '#sidebar' do
        expect(page).to have_css('.logo')

        within 'a.logo' do
          expect(page).to have_css('img[src="/img/logo.png"]')
          expect(page).to have_content('DEV PAGE')
        end
      end
    end

    it 'should contain logo' do
      within '#sidebar' do
        expect(page).to have_css('.logo')

        within 'a.logo' do
          expect(page).to have_css('img[src="/img/logo.png"]')
          expect(page).to have_content('DEV PAGE')
        end
      end
    end

    it 'should contain information about GitHub Pages' do
      within '#sidebar' do
        expect(page).to have_content('Proudly hosted by GitHub')
        expect(page).to have_link('GitHub', href: 'http://www.github.com')
      end
    end

  end

end