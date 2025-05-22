function stow_dots --description "Restow dotfiles using GNU Stow from ~/Documents/github/dotfiles"
    set -l dotfiles_dir "$HOME/Documents/github/dotfiles"

    # Create the directory if it doesn't exist
    mkdir -p "$dotfiles_dir"
    if test $status -ne 0 # Check status of mkdir
        echo "Error: Could not create directory $dotfiles_dir" >&2
        return 1 # Exit function with error status
    end

    # Change to the dotfiles directory
    cd "$dotfiles_dir"
    if test $status -ne 0 # Check status of cd
        echo "Error: Could not change to directory $dotfiles_dir" >&2
        return 1 # Exit function with error status
    end

    # Run stow; $USER is an environment variable available in Fish
    command stow --target="/home/$USER" --restow .
end
