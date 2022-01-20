function file_get_extension
    for arg in $argv
        echo $arg | sed -e 's/.*\.//'
    end
end