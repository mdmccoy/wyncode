require 'sinatra'

# May prevent browser from showing cached data
# Some students' browsers were not showing updated files.
# It happened less frequently with this line added to this file.
set :static_cache_control, [:public, max_age: -1]
