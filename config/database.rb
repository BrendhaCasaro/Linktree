# rubocop:disable all

require 'sqlite3'

DB = SQLite3::Database.new('/home/brendha/linktree/linktree.db')
DB.results_as_hash = true

schema = File.read('/home/brendha/linktree/config/schema.sql')

DB.execute schema