function file_strip_extension
    for arg in $argv
        echo $arg | sed 's/\.[^.]*$//'
    end
end