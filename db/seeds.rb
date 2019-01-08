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
            #puts a
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
    Question.destroy_all
    Question.reset_pk_sequence
    qData = []
    @item["results"].each do |a|
        cId = Category.find_by! name: a["category"]
        dId = Difficulty.find_by! name: a["difficulty"]
        qObject = {
            "question": a["question"],
            "difficulty_id": dId.id,
            "category_id": cId.id
        }
        qData << qObject unless qData.include? qObject
    end
    Question.create!(qData)
    CorrectAnswer.destroy_all
    IncorrectAnswer.destroy_all
    CorrectAnswer.reset_pk_sequence
    IncorrectAnswer.reset_pk_sequence
    caData = []
    iaData = []
    @item["results"].each do |a|
        qId = Question.find_by! question: a["question"]
        caObject = {
            "name": a["correct_answer"],
            "question_id": qId.id
        }
        a["incorrect_answers"].each do |answer|
            iaObject = {
                "answer": answer,
                "question_id": qId.id
            }
            iaData << iaObject 
        end
        
        caData << caObject
        
    end
    CorrectAnswer.create!(caData)
    IncorrectAnswer.create!(iaData)
end