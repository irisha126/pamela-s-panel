class DashboardController < ApplicationController
    before_action :authenticate_admin!
#    @admin = Admin.current(params[:id])
end
