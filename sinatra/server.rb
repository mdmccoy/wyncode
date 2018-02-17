require 'sinatra'
require 'pg'

put '/:id' do
  conn = PG.connect(dbname: 'birds')
  conn.exec("update birds set species = '#{params[:species]}' where id='#{params[:id]}'")
end

get '/' do
  conn = PG.connect(dbname: 'birds')
  conn.exec("insert into birds(species,color) values ('#{params[:species]}', '#{params[:color]}')")
  status 200
end
