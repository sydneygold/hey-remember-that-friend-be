class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :update, :destroy]

  def index
    @friends = Friend.all

    render json: @friends
  end

  def show
    render json: @friend
  end

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      render json: @friend, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  def update
    if @friend.update(friend_params)
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @friend.destroy
  end

  private
    def set_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:name, :birthday, :zodiac, :memos)
    end
end
