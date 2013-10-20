# https://github.com/mathiasbynens/dotfiles/

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`
for file in ~/.{path,bash_prompt,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Activate color in terminal (dark theme)
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Use Sublime Text 2 as the editor for many commands that prompt for input
export EDITOR='subl -w'