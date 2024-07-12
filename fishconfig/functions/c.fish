function c --wraps=code --description 'alias c code'
  # If it's a valid folder, set target directory
  # Otherwise, just pass through the args for vscode
  if set -q argv[1] && test -d $argv[1]
    set target_dir $argv[1]
    # Remove argv[1] after parsing it to avoid appending it twice
    set -e argv[1]
  else
    code $argv
    return
  end

  # Check for workspace.code-workspace file in the target directory
  if test -f $target_dir/workspace.code-workspace
    # Convert the workspace file path to a file URI
    set workspace_uri (realpath $target_dir/workspace.code-workspace | sed 's/^/file:\/\//')
    # Open VS Code with the workspace file and any additional arguments
    code --file-uri $workspace_uri $argv
  else
    # Open VS Code with the original arguments (target directory is included)
    code $target_dir $argv
  end
end