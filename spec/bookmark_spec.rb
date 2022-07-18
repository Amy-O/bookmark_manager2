require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
    
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makers.tech');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://makers.tech")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.example.org', title: 'Test Bookmark').first

      expect(bookmark['url']).to eq 'http://www.example.org'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end
  
end
