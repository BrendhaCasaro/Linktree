# rubocop:disable all

require 'sqlite3'

USERS = SQLite3::Database.new('/home/brendha/Linktree/users.db')
SL = SQLite3::Database.new('/home/brendha/Linktree/social_links.db')
USERS.results_as_hash = true
SL.results_as_hash = true

schema = File.read('/home/brendha/Linktree/config/schema_users.sql')
schema_SL = File.read('/home/brendha/Linktree/config/schema_SL.sql')

USERS.execute schema
SL.execute schema_SL