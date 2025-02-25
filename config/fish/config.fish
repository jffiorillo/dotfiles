# Disable fish greeting
set fish_greeting ""

# Bootstrap Fundle
if not functions -q fundle
  eval (curl -sfL https://git.io/fundle-install)
end

# Fundle
fundle plugin 'matchai/spacefish'
fundle plugin 'Jomik/fish-gruvbox'
fundle plugin 'jethrokuan/z'
fundle init

# Spacefish
set SPACEFISH_PROMPT_ADD_NEWLINE false

# Z
set --universal Z_CMD "j"

if status --is-interactive
  abbr --add --global gad git add
  abbr --add --global gch git checkout
  abbr --add --global gcm git commit
  abbr --add --global gdf git diff
  abbr --add --global gpl git pull
  abbr --add --global gps git push
  abbr --add --global gst git status
end
