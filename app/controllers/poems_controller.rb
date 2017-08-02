class PoemsController < ApplicationController
  before_action :set_poem, only: [:show, :edit, :update, :destroy]

  def index
    @poems = Poem.all
  end

  def show
    @poem = Poem.find(params[:id])
  end
end

def new
  @poem = Poem.new
end

def edit
end

def create
  @poem = Poem.new(poem_params)
end

def update
end

def destroy
  @poem.destroy
end

private

def set_poem
  @poem = Poem.find(params[:id])
end


def poem_params
  params.require(:poem).permit(:title, :content, :auther)
end
