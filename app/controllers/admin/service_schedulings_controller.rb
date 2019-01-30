module Admin
  class ServiceSchedulingsController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]

    def adjust_enum
      params[:service_scheduling][:status] = params[:service_scheduling][:status].to_i
    end
  end
end
