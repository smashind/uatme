class DocsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_doc, only: [:show]

  def index
    @docs = Doc.all
  end

  def show
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = current_user.docs.create(doc_params)

    if @doc.save
      flash[:notice] = "Your UAT was successfully created."
      redirect_to doc_path(@doc)
    else
      flash.now[:alert] = "Your UAT wasn't saved."
      render "edit"
    end
  end

  private

    def set_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:title, :description)
    end
end
