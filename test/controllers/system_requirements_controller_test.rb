require 'test_helper'

class SystemRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_requirement = system_requirements(:one)
  end

  test "should get index" do
    get system_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_system_requirement_url
    assert_response :success
  end

  test "should create system_requirement" do
    assert_difference('SystemRequirement.count') do
      post system_requirements_url, params: { system_requirement: { graphicsCard: @system_requirement.graphicsCard, memory: @system_requirement.memory, processor: @system_requirement.processor, space: @system_requirement.space, system: @system_requirement.system } }
    end

    assert_redirected_to system_requirement_url(SystemRequirement.last)
  end

  test "should show system_requirement" do
    get system_requirement_url(@system_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_requirement_url(@system_requirement)
    assert_response :success
  end

  test "should update system_requirement" do
    patch system_requirement_url(@system_requirement), params: { system_requirement: { graphicsCard: @system_requirement.graphicsCard, memory: @system_requirement.memory, processor: @system_requirement.processor, space: @system_requirement.space, system: @system_requirement.system } }
    assert_redirected_to system_requirement_url(@system_requirement)
  end

  test "should destroy system_requirement" do
    assert_difference('SystemRequirement.count', -1) do
      delete system_requirement_url(@system_requirement)
    end

    assert_redirected_to system_requirements_url
  end
end
