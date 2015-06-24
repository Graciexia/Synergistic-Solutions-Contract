class EmployeesCoursesController < ApplicationController
  before_action :set_employees_course, only: [:show, :edit, :update, :destroy]

  # GET /employees_courses
  # GET /employees_courses.json
  def index
    @employees_courses = EmployeesCourse.all
  end

  # GET /employees_courses/1
  # GET /employees_courses/1.json
  def show
  end

  # GET /employees_courses/new
  def new
    @employees_course = EmployeesCourse.new
  end

  # GET /employees_courses/1/edit
  def edit
  end

  # POST /employees_courses
  # POST /employees_courses.json
  def create
    @employees_course = EmployeesCourse.new(employees_course_params)

    respond_to do |format|
      if @employees_course.save
        format.html { redirect_to @employees_course, notice: 'Employees course was successfully created.' }
        format.json { render :show, status: :created, location: @employees_course }
      else
        format.html { render :new }
        format.json { render json: @employees_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees_courses/1
  # PATCH/PUT /employees_courses/1.json
  def update
    respond_to do |format|
      if @employees_course.update(employees_course_params)
        format.html { redirect_to @employees_course, notice: 'Employees course was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_course }
      else
        format.html { render :edit }
        format.json { render json: @employees_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees_courses/1
  # DELETE /employees_courses/1.json
  def destroy
    @employees_course.destroy
    respond_to do |format|
      format.html { redirect_to employees_courses_url, notice: 'Employees course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_course
      @employees_course = EmployeesCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employees_course_params
      params[:employees_course]
    end
end
