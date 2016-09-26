require 'test_helper'

class ScaleGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scale_game = scale_games(:one)
  end

  test "should get index" do
    get scale_games_url
    assert_response :success
  end

  test "should get new" do
    get new_scale_game_url
    assert_response :success
  end

  test "should create scale_game" do
    assert_difference('ScaleGame.count') do
      post scale_games_url, params: { scale_game: { ball_count: @scale_game.ball_count, succeeded: @scale_game.succeeded, weigh_count: @scale_game.weigh_count } }
    end

    assert_redirected_to scale_game_url(ScaleGame.last)
  end

  test "should show scale_game" do
    get scale_game_url(@scale_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_scale_game_url(@scale_game)
    assert_response :success
  end

  test "should update scale_game" do
    patch scale_game_url(@scale_game), params: { scale_game: { ball_count: @scale_game.ball_count, succeeded: @scale_game.succeeded, weigh_count: @scale_game.weigh_count } }
    assert_redirected_to scale_game_url(@scale_game)
  end

  test "should destroy scale_game" do
    assert_difference('ScaleGame.count', -1) do
      delete scale_game_url(@scale_game)
    end

    assert_redirected_to scale_games_url
  end
end
