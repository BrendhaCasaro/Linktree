# rubocop:disable all

require 'sqlite3'

USERS = SQLite3::Database.new('/home/brendha/linktree/users.db')
SL = SQLite3::Database.new('/home/brendha/linktree/social_links.db')
USERS.results_as_hash = true
SL.results_as_hash = true

schema = File.read('/home/brendha/linktree/config/schema_users.sql')
schema_SL = File.read('/home/brendha/linktree/config/schema_SL.sql')

USERS.execute schema
SL.execute schema_SL