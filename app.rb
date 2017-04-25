require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  erb :index
  erb :about
# require_relative 'view'
# require_relative 'recipe'
# require_relative 'cookbook'
# require_relative 'marmiton'
# require 'open-uri'
# require 'nokogiri'

# class Controller
#   attr_reader :ingredient

#   def initialize(cookbook)
#     @cookbook = cookbook
#     @view = View.new
#     @marmiton = Marmiton.new
#   end

#   def list
#     view_list
#   end

#   def create
#     name = @view.ask_user_for_recipe_name
#     description = @view.ask_user_for_recipe_description
#     recipe = Recipe.new(name: name, description: description)
#     @cookbook.add_recipe(recipe)
#   end

#   def destroy
#     view_list
#     recipe_id = @view.ask_user_for_index
#     @cookbook.remove_recipe(recipe_id)
#   end

#   def mark_as_done
#     view_list
#     index = @view.ask_user_for_index
#     recipe = @cookbook.find(index)
#     recipe.mark_as_done!
#   end

#   def search_from_marmiton
#     ingredient = @view.ask_user_for_ingredient
#     ideas = @marmiton.scrap_marmiton(ingredient)
#     # file = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")
#     # doc = Nokogiri::HTML(file, nil, 'utf-8')

#     # ideas = []
#     # hrefs =[]
#     # doc.search(".recette_classique").each do |result|
#     #   title = result.search(".m_titre_resultat a").text.strip
#     #   cooking_time = result.search(".m_prep_time").first.parent.text.strip
#     #   difficulty = result.search(".m_detail_recette").text.strip.split("-")[2]
#     #   hrefs << result.search(".m_titre_resultat a").first.attribute("href").value
#     #   # description = result.search(".m_titre_resultat href").text.strip
#     #   ideas << Recipe.new({name: title, cooking_time: cooking_time, difficulty: difficulty})
#     # end
#     @view.display(ideas)
#     index = @view.ask_user_for_index
#     recipe_file = open("http://www.marmiton.org/" + hrefs[index])
#     recipe_doc = Nokogiri::HTML(recipe_file, nil, 'utf-8')
#     name = recipe_doc.search(".fn").text.strip
#     description = recipe_doc.search(".m_content_recette_todo").text.strip
#     recipe = Recipe.new(name: name, description: description)
#     @cookbook.add_recipe(recipe)
#   end


#   private

#   def view_list
#     recipes = @cookbook.all
#     @view.display(recipes)
#   end
# end

end
