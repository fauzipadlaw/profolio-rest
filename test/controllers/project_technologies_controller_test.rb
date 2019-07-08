require 'test_helper'

class ProjectTechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_technology = project_technologies(:one)
  end

  test "should get index" do
    get project_technologies_url, as: :json
    assert_response :success
  end

  test "should create project_technology" do
    assert_difference('ProjectTechnology.count') do
      post project_technologies_url, params: { project_technology: { project_id: @project_technology.project_id, technology_id: @project_technology.technology_id } }, as: :json
    end

    assert_response 201
  end

  test "should show project_technology" do
    get project_technology_url(@project_technology), as: :json
    assert_response :success
  end

  test "should update project_technology" do
    patch project_technology_url(@project_technology), params: { project_technology: { project_id: @project_technology.project_id, technology_id: @project_technology.technology_id } }, as: :json
    assert_response 200
  end

  test "should destroy project_technology" do
    assert_difference('ProjectTechnology.count', -1) do
      delete project_technology_url(@project_technology), as: :json
    end

    assert_response 204
  end
end
