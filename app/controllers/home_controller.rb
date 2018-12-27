class HomeController < ApplicationController
  def index
    if user_signed_in?
      @teams = Team.where("id = ?", current_user.team_id)
      @projects = Project.where("team_id = ?", current_user.team_id)
      # shows the teams and projects on dashboard of the current user logged in ("My teams" "My Projects")
    end
  else
    root_path
  end
end
