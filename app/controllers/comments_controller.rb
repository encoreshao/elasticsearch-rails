class CommentsController < ApplicationController
  before_action :set_comment, only: [:show]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.page(params[:page])
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end
end
