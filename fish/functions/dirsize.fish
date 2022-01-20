function dirsize
  for option in $argv
    switch "$option"
      case -r
        set recursive
    end
  end
  if set -q recursive
    du -h $argv;
  else
    du -hs $argv; 
  end
end
