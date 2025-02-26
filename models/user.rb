# rubocop:disable all
require_relative '../config/database'

class User
  def self.all
    USERS.execute('SELECT * FROM users WHERE deleted_at IS NULL')
  end

  def self.auth(username, password)
    if (USERS.execute('SELECT * FROM users WHERE username = ? AND password = ? AND deleted_at IS NULL', [username, password]).first) == nil
        puts "Usuário inexistente ou desativado"
    else
        puts "Bem vindo #{username}"
    end
  end

  def self.create(username, password, name)
    USERS.execute('INSERT INTO users (username, password, name) VALUES (?, ?, ?)', [username, password, name])
  end

  def self.inactivate(username)
    USERS.execute('UPDATE users SET active = 0, deleted_at = CURRENT_TIMESTAMP WHERE username = ?', username)
  end
end

# For tests
# User.delete('alice123')
# User.auth('alice123', 'alicepass')
