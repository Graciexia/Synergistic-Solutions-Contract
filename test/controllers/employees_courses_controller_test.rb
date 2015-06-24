require 'test_helper'

class EmployeesCoursesControllerTest < ActionController::TestCase
  setup do
    @employees_course = employees_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employees_course" do
    assert_difference('EmployeesCourse.count') do
      post :create, employees_course: {  }
    end

    assert_redirected_to employees_course_path(assigns(:employees_course))
  end

  test "should show employees_course" do
    get :show, id: @employees_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employees_course
    assert_response :success
  end

  test "should update employees_course" do
    patch :update, id: @employees_course, employees_course: {  }
    assert_redirected_to employees_course_path(assigns(:employees_course))
  end

  test "should destroy employees_course" do
    assert_difference('EmployeesCourse.count', -1) do
      delete :destroy, id: @employees_course
    end

    assert_redirected_to employees_courses_path
  end
end
