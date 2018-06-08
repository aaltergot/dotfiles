function fish_prompt
  echo -n -s (prompt_pwd)
  if git_is_repo
    echo -n -s ":" (git_branch_name)
    if git_is_touched
      echo -n -s "*"
    end
  end
  echo -n -s " "
end
