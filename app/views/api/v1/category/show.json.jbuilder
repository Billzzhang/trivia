json.id @category.id
json.name @category.name

json.currect do
    json.question @category.questions.first
end