require "application_system_test_case"

class SystemRequirementsTest < ApplicationSystemTestCase
  setup do
    @system_requirement = system_requirements(:one)
  end

  test "visiting the index" do
    visit system_requirements_url
    assert_selector "h1", text: "System Requirements"
  end

  test "creating a System requirement" do
    visit system_requirements_url
    click_on "New System Requirement"

    fill_in "Graphicscard", with: @system_requirement.graphicsCard
    fill_in "Memory", with: @system_requirement.memory
    fill_in "Processor", with: @system_requirement.processor
    fill_in "Space", with: @system_requirement.space
    fill_in "System", with: @system_requirement.system
    click_on "Create System requirement"

    assert_text "System requirement was successfully created"
    click_on "Back"
  end

  test "updating a System requirement" do
    visit system_requirements_url
    click_on "Edit", match: :first

    fill_in "Graphicscard", with: @system_requirement.graphicsCard
    fill_in "Memory", with: @system_requirement.memory
    fill_in "Processor", with: @system_requirement.processor
    fill_in "Space", with: @system_requirement.space
    fill_in "System", with: @system_requirement.system
    click_on "Update System requirement"

    assert_text "System requirement was successfully updated"
    click_on "Back"
  end

  test "destroying a System requirement" do
    visit system_requirements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System requirement was successfully destroyed"
  end
end
