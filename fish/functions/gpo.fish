function gpo
  git push --set-upstream origin (git name-rev --name-only HEAD)
end
