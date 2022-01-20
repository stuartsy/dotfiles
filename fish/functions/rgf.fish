# Usage: rgf [pattern] [path]
# Find a filename matching pattern within path.
function rgf
    rg --files $argv[2] | rg --pcre2 $argv[1]
end