function gco --description 'Uses fzf to select a branch to checkout'
  git checkout (git branch | fzf | tr -d '[:space:]');
end
