require 'json'
require 'rest-client'
require 'htmlentities'

Category.destroy_all
Category.reset_pk_sequence
Difficulty.destroy_all
Difficulty.reset_pk_sequence

cData = [] #Category Data
dData = [] #Difficulty Data
questions_raw = RestClient.get("https://opentdb.com/api.php?amount=50")
@item = JSON.parse(questions_raw)
decoder = HTMLEntities.new(flavor = 'xhtml1')
#puts @item
@item["results"].each do |a|
    cObject = {
        "name": decoder.decode(a["category"])
    }
    cData << cObject unless cData.include? cObject
    
    dObject = {
        "name": decoder.decode(a["difficulty"])
    }
    dData << dObject unless dData.include? dObject
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
        "question": decoder.decode(a["question"]),
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
    qId = Question.find_by! question: decoder.decode(a["question"])
    caObject = {
        "name": decoder.decode(a["correct_answer"]),
        "question_id": qId.id
    }
    a["incorrect_answers"].each do |answer|
        iaObject = {
            "answer": decoder.decode(answer),
            "question_id": qId.id
        }
        iaData << iaObject 
    end
    
    caData << caObject
    
end
CorrectAnswer.create!(caData)
IncorrectAnswer.create!(iaData)

'''
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
'''