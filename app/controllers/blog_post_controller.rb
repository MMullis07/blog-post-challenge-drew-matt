class BlogPostController < ApplicationController

    def index
        @blog_posts = BlogPost.all
    end

    def show
        @blog_posts = BlogPost.find(params[:id])
    end

    def new
    end

    def create
        @blog_post = BlogPost.create(
            title: params[:title],
            content: params[:content]
        )
        if @blog_post.valid?
            redirect_to blog_posts_path
        else
            redirect_to new_post_path
        end
    end

    def edit
    end

    def update
        @blog_post = BlogPost.find(params[:id])
        @blog_post.update(
            title: params[:title],
            content: params[:content]
        )
        if @blog_post.valid?
            redirect_to blog_posts_path(@blog_post)
        else
            redirect_to blog_post_path
        end
    end

    def destroy 
        @blog_post = BlogPost.find(params[:id])
        if @blog_post.destroy
            redirect_to blog_posts_path
        else
            redirect_to blog_posts(@blog_post)
        end
    end


end
