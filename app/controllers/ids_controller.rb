class IdsController < ApplicationController

      def index
        @ids =Id.all
      end

      def new
        @id=Id.new
      end

      def create
        @id=Id.new
        @id.image=params[:image]
        @id.save

        redirect_to ids_path
      end

      def show
        @id=Id.find(params[:id])
      end

      def edit
        @id=Id.find(params[:id])
      end

      def update
        @id=Id.find(params[:id])
        @id.image=params[:image]
        @id.update_attributes(image_params)

        redirect_to ids_path
      end

      def destroy
        @id=Id.find(params[:id])
        @id.destroy

        redirect_to ids_path
      end

      def image_params
        params.require(:id).permit(:image)
      end
end
