require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///sql_hw.db"

get '/' do 
	erb :"home"
end

get '/professors' do
	@professors_all = Professor.all
	@subjects_all = Subject.all
	erb :"professors/index"
end

get '/courses' do
	@courses_all = Course.all
	erb :'/courses/index'
end

get '/subjects' do
	@subjects_all = Subject.all
	@professors_all = Professor.all
	erb :'/subjects/index'
end

get '/professors/new' do
	erb :'/professors/new'
end

get '/courses/new' do
	erb :'/courses/new'
end

get '/subjects/new' do
	erb :'/subjects/new'
end

post '/professors/new' do
	new_professor = Professor.new(params[:professors])
	new_professor.save
	erb :'professors/show'
end	

post '/courses/new' do
	new_course = Course.new(params[:courses])
	new_course.save
	erb :'courses/show'
end	

post '/subjects/new' do
	new_subject = Subject.new(params[:subjects])
	new_subject.save
	erb :'subjects/show'
end	

get '/professors/:id/edit' do
	@updated_professor = Professor.find(params[:id])
	erb :"professors/edit"
end


put '/professors/:id/edit' do
	@updated_professor = Professor.find(params[:id])
	@updated_professor.update_attributes(params[:professors])
	erb :"professors/show"
end

get '/courses/:id/edit' do
	@updated_course = Course.find(params[:id])
	erb :"courses/edit"
end


put '/courses/:id/edit' do
	@updated_course = Course.find(params[:id])
	@updated_course.update_attributes(params[:courses])
	erb :"courses/show"
end

get '/subjects/:id/edit' do
	@updated_subject = Subject.find(params[:id])
	erb :"subjects/edit"
end

put '/subjects/:id/edit' do
	@updated_subject = Subject.find(params[:id])
	@updated_subject.update_attributes(params[:subjects])
	erb :"subjects/show"
end

delete '/professors/:id/delete' do
	deleted_professor = Professor.find(params[:id])
	deleted_professor.destroy
	erb :"professors/index"
end

delete '/courses/:id/delete' do
	deleted_course = Course.find(params[:id])
	deleted_course.destroy
	erb :"courses/index"
end

delete '/subjects/:id/delete' do
	deleted_subject = Subject.find(params[:id])
	deleted_subject.destroy
	erb :"subjects/index"
end


class Professor < ActiveRecord::Base

end

class	Course < ActiveRecord::Base

end
 
class	Subject < ActiveRecord::Base

end