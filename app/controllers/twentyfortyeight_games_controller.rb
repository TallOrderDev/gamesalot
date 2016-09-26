class TwentyfortyeightGamesController < ApplicationController
  before_action :set_twentyfortyeight_game, only: [:show, :edit, :update, :destroy]

  # GET /twentyfortyeight_games
  # GET /twentyfortyeight_games.json
  def index
    @twentyfortyeight_games = TwentyfortyeightGame.all
  end

  # GET /twentyfortyeight_games/1
  # GET /twentyfortyeight_games/1.json
  def show
  end

  # GET /twentyfortyeight_games/new
  def new
    @twentyfortyeight_game = TwentyfortyeightGame.new
  end

  # GET /twentyfortyeight_games/1/edit
  def edit
  end

  # POST /twentyfortyeight_games
  # POST /twentyfortyeight_games.json
  def create
    @twentyfortyeight_game = TwentyfortyeightGame.new(twentyfortyeight_game_params)

    respond_to do |format|
      if @twentyfortyeight_game.save
        format.html { redirect_to @twentyfortyeight_game, notice: 'Twentyfortyeight game was successfully created.' }
        format.json { render :show, status: :created, location: @twentyfortyeight_game }
      else
        format.html { render :new }
        format.json { render json: @twentyfortyeight_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twentyfortyeight_games/1
  # PATCH/PUT /twentyfortyeight_games/1.json
  def update
    respond_to do |format|
      if @twentyfortyeight_game.update(twentyfortyeight_game_params)
        format.html { redirect_to @twentyfortyeight_game, notice: 'Twentyfortyeight game was successfully updated.' }
        format.json { render :show, status: :ok, location: @twentyfortyeight_game }
      else
        format.html { render :edit }
        format.json { render json: @twentyfortyeight_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twentyfortyeight_games/1
  # DELETE /twentyfortyeight_games/1.json
  def destroy
    @twentyfortyeight_game.destroy
    respond_to do |format|
      format.html { redirect_to twentyfortyeight_games_url, notice: 'Twentyfortyeight game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twentyfortyeight_game
      @twentyfortyeight_game = TwentyfortyeightGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twentyfortyeight_game_params
      params.require(:twentyfortyeight_game).permit(:moves)
    end
end
