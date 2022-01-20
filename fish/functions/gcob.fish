function gcob --wraps='git checkout -b' --description 'alias gcob git checkout -b'
  git checkout -b $argv[1];
  git push -u origin $argv[1]; 
end
