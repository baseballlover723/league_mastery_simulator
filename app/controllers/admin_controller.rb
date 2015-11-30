class AdminController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]
  @@polling = false
  @@last_match_id = false

  def index
    @is_db_clean = (Bucket.where.not(wins: 0).length + Bucket.where.not(losses: 0).length) == 0 &&
        Bucket.all.length == MAX_X * MAX_Y * COLORS.length * RANKS.length
    @last_match_id = @@last_match_id || get_last_match_id
    @start_stop_string = @@polling ? "Stop" : "Start"
  end

  def get_last_match_id
    raise "multiple or no values in the last match id object" unless LastMatchId.all.length == 1
    LastMatchId.first
  end
end
