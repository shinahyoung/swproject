class QnasController < ApplicationController
  before_action :set_qna, only: [:show, :edit, :update, :destroy]

  # GET /qnas
  # GET /qnas.json
  def index
    @qnas = Qna.all
  end

  # GET /qnas/1
  # GET /qnas/1.json
  def show

  end

  # GET /qnas/new
  def new
@user=User.find(session[:user_id])
    @qna = Qna.new
  end

  # GET /qnas/1/edit
  def edit
  end

  # POST /qnas
  # POST /qnas.json
  def create
    @qna = Qna.new
cb=params[:qna]
    @qna.post_id=params[:post_id]
@qna.name=cb[:name]
@qna.title=cb[:title]
@qna.content=cb[:content]
    respond_to do |format|
      if @qna.save
        format.html { redirect_to "/products/show/#{params[:post_id]}", notice: 'Qna was successfully created.' }
        format.json { render :show, status: :created, location: @qna }
      else
        format.html { render :new }
        format.json { render json: @qna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qnas/1
  # PATCH/PUT /qnas/1.json
  def update

    respond_to do |format|
      if @qna.update(qna_params)
        format.html { redirect_to "/products/show/#{@qna.post_id}", notice: 'Qna was successfully updated.' }
        format.json { render :show, status: :ok, location: @qna }
      else
        format.html { render :edit }
        format.json { render json: @qna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qnas/1
  # DELETE /qnas/1.json
  def destroy
    @qna.destroy
    respond_to do |format|
      format.html { redirect_to "/products/show/#{@qna.post_id}", notice: 'Qna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qna
      @qna = Qna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qna_params
      params.require(:qna).permit(:post_id,:title, :name, :content)
    end
end
