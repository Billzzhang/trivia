json.id @category.id
json.name @category.name

json.current do
    json.question @category.questions
end