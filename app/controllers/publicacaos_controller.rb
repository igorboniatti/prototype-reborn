class PublicacaosController < ApplicationController
  before_action :set_publicacao, only: [:show, :edit, :update, :destroy]

  # GET /publicacaos
  # GET /publicacaos.json
  def index
    @publicacaos = Publicacao.all
  end

  # GET /publicacaos/1
  # GET /publicacaos/1.json
  def show
    @comentarios = Comentario.all
  end

  # GET /publicacaos/new
  def new
    @publicacao = Publicacao.new
  end

  # GET /publicacaos/1/edit
  def edit
  end

  # POST /publicacaos
  # POST /publicacaos.json
  def create
    @publicacao = Publicacao.new(publicacao_params)

    respond_to do |format|
      if @publicacao.save
        format.html { redirect_to @publicacao, notice: 'Publicacao was successfully created.' }
        format.json { render :show, status: :created, location: @publicacao }
      else
        format.html { render :new }
        format.json { render json: @publicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicacaos/1
  # PATCH/PUT /publicacaos/1.json
  def update
    respond_to do |format|
      if @publicacao.update(publicacao_params)
        format.html { redirect_to @publicacao, notice: 'Publicacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @publicacao }
      else
        format.html { render :edit }
        format.json { render json: @publicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicacaos/1
  # DELETE /publicacaos/1.json
  def destroy
    @publicacao.destroy
    respond_to do |format|
      format.html { redirect_to publicacaos_url, notice: 'Publicacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacao
      @publicacao = Publicacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicacao_params
      params.require(:publicacao).permit(:titulo, :data, :conteudo)
    end
end