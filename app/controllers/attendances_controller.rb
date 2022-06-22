class AttendancesController < ApplicationController
  # before_action :set_employee, only: %i[create]

  def index
    @attendances = Attendance.all
  end

  def new; end

  def create
    @employee = Employee.find_by(private_number: params[:private_number])
    if @employee.nil?
      redirect_to root_path, notice: 'no found'
    else
      @last_attendance = @employee.attendances.last
      if @last_attendance.check_in.present? && @last_attendance.check_out.nil?
        @last_attendance.update!(check_out: Time.zone.now.localtime)
        redirect_to root_path, notice: 'Good bye' + @employee.name + ' Successfully check_out'
      else
        log_check_in
      end
    end
  end

  def log_check_in
    if @employee.id && (@employee.active == true)
      id = @employee.id
      Attendance.create!(check_in: Time.zone.now.localtime, check_out: nil, employee_id: id)
      redirect_to root_path, notice: 'welcome ' + @employee.name + ' Successfully check_in'
    else
      redirect_to root_path, notice: ' no found'
    end
  end

  private

  def set_employee
    @employee = Employee.find_by(private_number: params[:private_number])
  end

  def employee_params
    params.require(:employee).permit(:private_number)
  end
end
