require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    fill_in "Answertext", with: @question.answertext
    fill_in "Comment", with: @question.comment
    fill_in "Curriculumref", with: @question.curriculumref
    fill_in "Instructions", with: @question.instructions
    fill_in "Level", with: @question.level
    fill_in "Marks", with: @question.marks
    fill_in "Part", with: @question.part
    fill_in "Preamble", with: @question.preamble
    fill_in "Questionnumber", with: @question.questionnumber
    fill_in "Questiontext", with: @question.questiontext
    fill_in "Questiontype", with: @question.questiontype
    fill_in "Section", with: @question.section
    fill_in "Subpart", with: @question.subpart
    fill_in "Subtopic", with: @question.subtopic
    fill_in "Teachingpoint", with: @question.teachingpoint
    fill_in "Topic", with: @question.topic
    fill_in "Year", with: @question.year
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    fill_in "Answertext", with: @question.answertext
    fill_in "Comment", with: @question.comment
    fill_in "Curriculumref", with: @question.curriculumref
    fill_in "Instructions", with: @question.instructions
    fill_in "Level", with: @question.level
    fill_in "Marks", with: @question.marks
    fill_in "Part", with: @question.part
    fill_in "Preamble", with: @question.preamble
    fill_in "Questionnumber", with: @question.questionnumber
    fill_in "Questiontext", with: @question.questiontext
    fill_in "Questiontype", with: @question.questiontype
    fill_in "Section", with: @question.section
    fill_in "Subpart", with: @question.subpart
    fill_in "Subtopic", with: @question.subtopic
    fill_in "Teachingpoint", with: @question.teachingpoint
    fill_in "Topic", with: @question.topic
    fill_in "Year", with: @question.year
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
