class ScaleGamesController < ApplicationController
  before_action :set_scale_game, only: [:show, :edit, :update, :destroy]

  # GET /scale_games
  # GET /scale_games.json
  def index
    @scale_games = ScaleGame.all
  end

  # GET /scale_games/1
  # GET /scale_games/1.json
  def show
  end

  # GET /scale_games/new
  def new
    @scale_game = ScaleGame.new
  end

  # GET /scale_games/1/edit
  def edit
  end

  # POST /scale_games
  # POST /scale_games.json
  def create
    puts params
    @scale_game = ScaleGame.new(scale_game_params)

    respond_to do |format|
      if @scale_game.save
        format.html { redirect_to @scale_game, notice: 'Scale game was successfully created.' }
        format.json { render :show, status: :created, location: @scale_game }
      else
        format.html { render :new }
        format.json { render json: @scale_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scale_games/1
  # PATCH/PUT /scale_games/1.json
  def update
    respond_to do |format|
      if @scale_game.update(scale_game_params)
        format.html { redirect_to @scale_game, notice: 'Scale game was successfully updated.' }
        format.json { render :show, status: :ok, location: @scale_game }
      else
        format.html { render :edit }
        format.json { render json: @scale_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scale_games/1
  # DELETE /scale_games/1.json
  def destroy
    @scale_game.destroy
    respond_to do |format|
      format.html { redirect_to scale_games_url, notice: 'Scale game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scale_game
      @scale_game = ScaleGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scale_game_params
      params.require(:scale_game).permit(:weigh_count, :ball_count, :succeeded)
    end
end
