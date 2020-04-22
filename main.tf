resource "github_team" "demo-team" {
  name = "demo-team-1"
}

resource "github_team_membership" "member-1" {
  team_id = "${github_team.demo-team.id}"
  username = "henriquechang"
}

resource "github_repository" "demo-app-repository" {
  name = "demo-repository"
  description = "Demo Repository Example"
  private = false
  auto_init = true
  allow_merge_commit = false
}