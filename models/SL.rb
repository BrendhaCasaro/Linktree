# rubocop:disable all

require_relative '../config/database'

class Link
  def self.include
    SL.execute('')
  end
end