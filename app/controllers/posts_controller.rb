class PostsController < ApplicationController
    before_filter :authenticate_user!, :only => [:new, :edit, :update, :destroy]

      def index
        @posts = Post.all
      end

      def show
        @post = Post.find(params[:id])
      end

      def create
          if request.post?
            @post = Post.new(params[:post])
              if @post.save
                redirect_to "/posts/#{@post.id}/"
              end
              else
                redirect_to "/posts/new"
          end
      end

      def new
        if request.post?
          @post = Post.new(params[:post])
          if @post.save
            redirect_to "/posts/#{@post.id}/"
          end
          else
            @post = Post.new
          end
      end


      def edit
          @post = Post.find(params[:id])
      end

      def update
       @post = Post.find(params[:id]) 
        respond_to do |format|
            if @post.update_attributes(params[:post])
              format.html { redirect_to(@post, :notice => 'Post updated') }
       
            else
              format.html { render :action => "edit" }

            end
          end
      end

      def destroy
        @post = Post.find(params[:id])
        @post.destroy
        respond_to do |format|
            format.html { redirect_to(posts_url) }
        end


      end

      def comment
        Post.find(params[:id]).comments.create(params[:comment])
      end

      def search
        @posts = Post.search(params[:query])
      end

      def archive
        @posts = Post.all
      end

end
