# Find the executables associated with a homebrew formula
# Usage: brew_bins [brew formula]
function brew_bins
    brew unlink --dry-run $argv | rg (brew --prefix)"/bin" | xargs basename
end