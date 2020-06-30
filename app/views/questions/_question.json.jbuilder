json.extract! question, :id, :level, :year, :section, :questionnumber, :part, :subpart, :instructions, :preamble, :questiontext, :answertext, :teachingpoint, :comment, :questiontype, :topic, :subtopic, :marks, :curriculumref, :created_at, :updated_at
json.url question_url(question, format: :json)
