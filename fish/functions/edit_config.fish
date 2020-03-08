function edit_config
	
	set -l config_file_location ~/.config/fish/config.fish
	
	# if count $argv > /dev/null
	# 	for option in $argv
	#     switch "$option"
	#         case -f --foo
	#         	echo "Hi there"
	#         case -b --bar
	#         	echo "Ho there"
	#         case \*
	#             printf "error: Unknown option %s\n" $option
	#     end
	# 	end
	# end

	if set -q EDITOR
		$EDITOR $config_file_location
	else
		for editor in vim nano emacs
			# type -q: quiets all output but returns error exit code if command doesn't exist
			if type -q $editor
				$editor $config_file_location
				return
			end
		end
		echo "Could not find an editor :("
	end

end