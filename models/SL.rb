# rubocop:disable all

require_relative '../config/database'

class Link
  def self.include(url, user_id, name)
    SL.execute('INSERT INTO social_links (url, user_id, name) VALUES (?, ?, ?) ', [url, user_id, name)
  end
end