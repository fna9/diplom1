require 'test_helper'

class SyllabusesControllerTest < ActionController::TestCase
  setup do
    @syllabus = syllabuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syllabuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syllabus" do
    assert_difference('Syllabus.count') do
      post :create, syllabus: { code: @syllabus.code, form_of_study: @syllabus.form_of_study, level: @syllabus.level, title: @syllabus.title, training_period: @syllabus.training_period }
    end

    assert_redirected_to syllabus_path(assigns(:syllabus))
  end

  test "should show syllabus" do
    get :show, id: @syllabus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syllabus
    assert_response :success
  end

  test "should update syllabus" do
    patch :update, id: @syllabus, syllabus: { code: @syllabus.code, form_of_study: @syllabus.form_of_study, level: @syllabus.level, title: @syllabus.title, training_period: @syllabus.training_period }
    assert_redirected_to syllabus_path(assigns(:syllabus))
  end

  test "should destroy syllabus" do
    assert_difference('Syllabus.count', -1) do
      delete :destroy, id: @syllabus
    end

    assert_redirected_to syllabuses_path
  end
end
