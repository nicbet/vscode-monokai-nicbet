module API
  module V1
    # CRUD API endpoints for the Blog model
    class BlogController < ApiController
      before_action :set_blog, only: [:show]
      
      def index
        @blogs = Blog.all
        render(json: @blogs)
      end

      def show
        render(json: @blog)
      end

      private

        def set_blog
          @blog = Blog.find(params[:id])
        end
    end
  end
end