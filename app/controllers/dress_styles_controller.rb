class DressStylesController < ApplicationController
  before_action :set_dress_style, only: [:show, :edit, :update, :destroy]
  before_action :adminauthorise, only: [:create, :new, :edit, :update, :destroy]

  # GET /dress_styles
  # GET /dress_styles.json
  def index
    @dress_styles = DressStyle.all
  end

  # GET /dress_styles/1
  # GET /dress_styles/1.json
  def show
  end

  # GET /dress_styles/new
  def new
    @dress_style = DressStyle.new
  end

  # GET /dress_styles/1/edit
  def edit
  end

  # POST /dress_styles
  # POST /dress_styles.json
  def create
    @dress_style = DressStyle.new(dress_style_params)

    respond_to do |format|
      if @dress_style.save
        format.html { redirect_to @dress_style, notice: 'Dress style was successfully created.' }
        format.json { render :show, status: :created, location: @dress_style }
      else
        format.html { render :new }
        format.json { render json: @dress_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dress_styles/1
  # PATCH/PUT /dress_styles/1.json
  def update
    respond_to do |format|
      if @dress_style.update(dress_style_params)
        format.html { redirect_to @dress_style, notice: 'Dress style was successfully updated.' }
        format.json { render :show, status: :ok, location: @dress_style }
      else
        format.html { render :edit }
        format.json { render json: @dress_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dress_styles/1
  # DELETE /dress_styles/1.json
  def destroy
    @dress_style.destroy
    respond_to do |format|
      format.html { redirect_to dress_styles_url, notice: 'Dress style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dress_style
      @dress_style = DressStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dress_style_params
      params.require(:dress_style).permit(:style)
    end
end
