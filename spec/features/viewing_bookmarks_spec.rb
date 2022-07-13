

feature 'viewing bookmarks' do
    xscenario 'returns a list of bookmarks' do
        visit('/bookmarks')

        expect(page).to have_content "http://makers.tech"
        expect(page).to have_content "http://www.destroyallsoftware.com"
        expect(page).to have_content "http://www.google.com"
    end
end
