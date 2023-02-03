class SchedulersController < ApplicationController
    def create
        schedule=Scheduler.create(schedule_params)
        render json: schedule
    end
    def index
        schedule=Scheduler.all 
        render json: schedule , status:  :ok
    end
    def destroy
        schedule=Scheduler.find(params[:id])
        schedule.destroy()
        # content: no_head
    end
    def show
        schedule=Scheduler.find(params[:id])
        schedule.update(schedule_params)
        render json: schedule
    end
    private
    def schedule_params
        params.permit(:schedule)
    end
end
