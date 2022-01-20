# Count how many of each file type there are in a directory
function filetypes
    rg --files $argv | sed -e 's/.*\.//' | sort | uniq -c
end