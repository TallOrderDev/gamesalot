require 'test_helper'

class TwentyfortyeightGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twentyfortyeight_game = twentyfortyeight_games(:one)
  end

  test "should get index" do
    get twentyfortyeight_games_url
    assert_response :success
  end

  test "should get new" do
    get new_twentyfortyeight_game_url
    assert_response :success
  end

  test "should create twentyfortyeight_game" do
    assert_difference('TwentyfortyeightGame.count') do
      post twentyfortyeight_games_url, params: { twentyfortyeight_game: { moves: @twentyfortyeight_game.moves } }
    end

    assert_redirected_to twentyfortyeight_game_url(TwentyfortyeightGame.last)
  end

  test "should show twentyfortyeight_game" do
    get twentyfortyeight_game_url(@twentyfortyeight_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_twentyfortyeight_game_url(@twentyfortyeight_game)
    assert_response :success
  end

  test "should update twentyfortyeight_game" do
    patch twentyfortyeight_game_url(@twentyfortyeight_game), params: { twentyfortyeight_game: { moves: @twentyfortyeight_game.moves } }
    assert_redirected_to twentyfortyeight_game_url(@twentyfortyeight_game)
  end

  test "should destroy twentyfortyeight_game" do
    assert_difference('TwentyfortyeightGame.count', -1) do
      delete twentyfortyeight_game_url(@twentyfortyeight_game)
    end

    assert_redirected_to twentyfortyeight_games_url
  end
end
