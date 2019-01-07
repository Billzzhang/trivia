# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#l = Difficulty.create(name: "easy")
#mandt = Category.create(name: "Entertainment: Musicals & Theatre") 
#l.questions.create(question: "When was Macbeth written", difficulty_id:1, category_id: 1)
require 'json'
Category.destroy_all
Category.reset_pk_sequence
Difficulty.destroy_all
Difficulty.reset_pk_sequence
open("trivia.json") do |file|
    cData = [] #Category Data
    dData = [] #Difficulty Data
    file.read.each_line do |c|
        @item = JSON.parse(c)
        @item["results"].each do |a|
            cObject = {
                "name": a["category"]
            }
            cData << cObject unless cData.include? cObject
            dObject = {
                "name": a["difficulty"]
            }
            dData << dObject unless dData.include? dObject
        end
    end
    Category.create!(cData)
    Difficulty.create!(dData)
end

    