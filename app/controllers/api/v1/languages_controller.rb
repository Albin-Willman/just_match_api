class Api::V1::LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :update, :destroy]

  api :GET, '/languages', 'List languages'
  description 'Returns a list of languages.'
  formats ['json']
  def index
    @languages = Language.all

    render json: @languages
  end

  api :GET, '/languages/:id', 'Show language'
  description 'Return language.'
  formats ['json']
  def show
    render json: @language
  end

  api :POST, '/languages/', 'Create new language'
  description 'Creates and returns new language.'
  formats ['json']
  param :job, Hash, desc: 'Language attributes', required: true do
    param :lang_code, String, desc: 'Language code', required: true
  end
  def create
    @language = Language.new(language_params)

    if @language.save
      render json: @language, status: :created, location: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  api :PATCH, '/languages/:id', 'Update language'
  description 'Updates and returns the updated language.'
  formats ['json']
  param :job, Hash, desc: 'Language attributes', required: true do
    param :lang_code, String, desc: 'Name'
  end
  def update
    @language = Language.find(params[:id])

    if @language.update(language_params)
      head :no_content
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  api :DELETE, '/languages/:id', 'Delete language'
  description 'Deletes language.'
  formats ['json']
  def destroy
    @language.destroy

    head :no_content
  end

  private

    def set_language
      @language = Language.find(params[:id])
    end

    def language_params
      params.require(:language).permit(:lang_code, :primary)
    end
end