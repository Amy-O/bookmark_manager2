

feature 'viewing bookmarks' do
    scenario 'returns a list of bookmarks' do
        Bookmark.create(url: "http://makers.tech")
        Bookmark.create(url: "http://www.destroyallsoftware.com")
        Bookmark.create(url: "http://www.google.com") 
       
        visit('/bookmarks')

        expect(page).to have_content "http://makers.tech"
        expect(page).to have_content "http://www.destroyallsoftware.com"
        expect(page).to have_content "http://www.google.com"
    end
end
