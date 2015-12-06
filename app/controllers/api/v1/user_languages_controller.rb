class Api::V1::UserLanguagesController < ApplicationController
  before_action :set_user_language, only: [:show, :update, :destroy]

  api :GET, '/user_languages', 'List user languages'
  description 'Returns a list of user languages.'
  formats ['json']
  def index
    @user_languages = UserLanguage.all

    render json: @user_languages
  end

  api :GET, '/user_languages/:id', 'Show user language'
  description 'Return user language.'
  formats ['json']
  def show
    render json: @user_language
  end

  api :POST, '/user_languages/', 'Create new user language'
  description 'Creates and returns new user language.'
  formats ['json']
  param :user_language, Hash, desc: 'User language attributes', required: true do
    param :user_id, Integer, desc: 'User id', required: true
    param :language_id, Integer, desc: 'Language id', required: true
  end
  def create
    @user_language = UserLanguage.new(user_language_params)

    if @user_language.save
      render json: @user_language, status: :created, location: @user_language
    else
      render json: @user_language.errors, status: :unprocessable_entity
    end
  end

  api :DELETE, '/user_languages/:id', 'Delete user language'
  description 'Deletes user language.'
  formats ['json']
  def destroy
    @user_language.destroy

    head :no_content
  end

  private

    def set_user_language
      @user_language = UserLanguage.find(params[:id])
    end

    def user_language_params
      params.require(:user_language).permit(:language_id, :user_id)
    end
end
