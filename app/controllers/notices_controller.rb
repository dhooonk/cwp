class NoticesController < ApplicationController

      def index
        @notices = Notice.all

        @programs = Program.all
      end

      def new
        @notice = Notice.new
      end

      def create
        @notice = Notice.new
        @notice.title = params[:title]
        @notice.content = params[:content]
        @notice.save

        redirect_to  notices_path
      end

      def show
        @notice = Notice.find(params[:id])

      end

      def edit
        @notice = Notice.find(params[:id])
      end

      def update
        @notice = Notice.find(params[:id])
        @notice.title = params[:title]
        @notice.content = params[:content]
        @notice.update_attributes(notice_params)

        redirect_to notices_path
      end

      def destroy
        @notice = Notice.find(params[:id])
        @notice.destroy

        redirect_to notices_path
      end

      def notice_params
        params.require(:notice).permit(:title, :content)
      end
end
