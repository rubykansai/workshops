require 'rubygems'
require 'active_record'

ActiveRecord::Migration.verbose = false
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :users do |t|
    t.timestamps
    t.string    :name
  end
end

class User < ActiveRecord::Base
end
User.create(:name => 'John')
user = User.first
user.created_at
user[:created_at]
