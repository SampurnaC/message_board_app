class LikesController < ApplicationController

    def create
        @like = current_user.likes.new(like_params)

        if !@like.save
            flash[:notice] = @like.errors.full_messages.to_sentence
        end

        redirect_to @like.topic

    end

    def destroy
        @like = current_user.likes.find(params[:id])
        topic = @like.topic
        @like.destroy
        redirect_to @like.topic        
    end

    def like_params
        params.require(:like).permit(:topic_id)
    end

end
