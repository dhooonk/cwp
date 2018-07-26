class CustomersController < ApplicationController

      def index
        @custom = Customer.all
      end

      def new
        @custom=Customer.new
      end

      def create
        @custom=Customer.new
        @custom.custom_name = params[:customerName]
        @custom.phone = params[:customerPhone]
        @custom.etc=params[:customerETC]
        @custom.save

        redirect_to customers_path
      end

      def show
        @custom=Customer.find(params[:id])
        @list = CustomProgram.where(:customer_id => params[:id])

      end

      def edit
        @custom=Customer.find(params[:id])
      end

      def update
        @custom=Customer.find(params[:id])
        @custom.name=params[:customName]
        @custom.update
      end

      def destroy
        @custom=Customer.find(params[:id])
        @custom.destroy

        redirect_to customers_path
      end
  end
