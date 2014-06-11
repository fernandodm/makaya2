##
# A MySQL connection:
# DataMapper.setup(:default, 'mysql://user:password@localhost/the_database_name')
#
# # A Postgres connection:
# DataMapper.setup(:default, 'postgres://user:password@localhost/the_database_name')
#
# # A Sqlite3 connection
# DataMapper.setup(:default, "sqlite3://" + Padrino.root('db', "development.db"))
#
# # Setup DataMapper using config/database.yml
# DataMapper.setup(:default, YAML.load_file(Padrino.root('config/database.yml'))[RACK_ENV])
#
# config/database.yml file:
#
# ---
# development: &defaults
#   adapter: mysql
#   database: example_development
#   username: user
#   password: Pa55w0rd
#   host: 127.0.0.1cl
#
# test:
#   <<: *defaults
#   database: example_test
#
# production:
#   <<: *defaults
#   database: example_production
#



DataMapper.logger = logger
DataMapper::Property::String.length(255)

case Padrino.env
  when :development then DataMapper.setup(:default, 'sqlite3://' + Padrino.root('db', 'makaya2_development.db'))
  when :travis      then DataMapper.setup(:default, 'sqlite3::memory:')
  when :test        then DataMapper.setup(:default, 'sqlite3::memory:')
  when :staging 	then DataMapper.setup(:default, ENV['DATABASE_URL'])
  when :production  then DataMapper.setup(:default, ENV['postgres://kanqhpxnuljfns:IuNGju-_Kz04NEEFf3qPZbdNcD@ec2-54-225-101-199.compute-1.amazonaws.com:5432/dde6ogqo8g1f4l'])
end
