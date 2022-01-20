function count_file_extensions
    file_get_extension (rgf ".*" $argv) | sort | uniq -c
end