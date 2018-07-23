class ProgramsController < ApplicationController

    def index
      @programs = Program.all
    end

    def new
      @program=Program.new
    end

    def create
      @program=Program.new
      @program.name=params[:programName]
      @program.startDay=params[:programStartDay]
      @program.endDay=params[:programEndDay]
      @program.doingDay=params[:programDoingDay]
      @program.doingTime=params[:programDoingTime]
      @program.save

      redirect_to programs_path
    end

    def show
      @program=Program.find(params[:id])
      @list = CustomProgram.where(:program_id => params[:id])

    end

    def edit
      @program=Program.find(params[:id])
    end

    def update
      @program=Program.find(params[:id])
      @program.name=params[:programName]
      @program.startDay=params[:programStartDay]
      @program.endDay=params[:programEndDay]
      @program.doingDay=params[:programDoingDay]
      @program.doingTime=params[:programDoingTime]
      @program.update
    end

    def destroy
      @program=Program.find(params[:id])
      @program.destroy

      redirect_to programs_path
    end
end
