class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :level
      t.integer :year
      t.string :section
      t.integer :questionnumber
      t.string :part
      t.string :subpart
      t.text :instructions
      t.text :preamble
      t.text :questiontext
      t.text :answertext
      t.text :teachingpoint
      t.text :comment
      t.string :questiontype
      t.string :topic
      t.string :subtopic
      t.integer :marks
      t.string :curriculumref

      t.timestamps
    end
  end
end
