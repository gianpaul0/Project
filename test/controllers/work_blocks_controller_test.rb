require 'test_helper'

class WorkBlocksControllerTest < ActionController::TestCase
  setup do
    @work_block = work_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_block" do
    assert_difference('WorkBlock.count') do
      post :create, work_block: { end_time: @work_block.end_time, start_time: @work_block.start_time }
    end

    assert_redirected_to work_block_path(assigns(:work_block))
  end

  test "should show work_block" do
    get :show, id: @work_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_block
    assert_response :success
  end

  test "should update work_block" do
    patch :update, id: @work_block, work_block: { end_time: @work_block.end_time, start_time: @work_block.start_time }
    assert_redirected_to work_block_path(assigns(:work_block))
  end

  test "should destroy work_block" do
    assert_difference('WorkBlock.count', -1) do
      delete :destroy, id: @work_block
    end

    assert_redirected_to work_blocks_path
  end
end
