function change_extension --description "Usage: change_extension [filename] [desired extension]"
    set basename (echo $argv[1] |sed 's/\.[^.]*$//')
    echo $basename.$argv[2]
end