function print_waves
	argparse --name=print_waves 'c/color=' 'l/length=' 'f/fullscreen' -- $argv 
	or return

	if set -q _flag_c
		set_color _flag_c
	else
		set_color blue
	end

	# default wave length
	set -l wave_length 40

	if set -q _flag_l
		set wave_length $_flag_l
	else if set -q _flag_f
		set wave_length (tput cols)
	end

	set -l wave_top "   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   ,(   "
	set -l wave_bot "`-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'"	

	echo (string sub -l $wave_length $wave_top)
	echo (string sub -l $wave_length $wave_bot)

	set_color normal

	# echo "   ,(   ,(   ,(   ,(   ,(   ,(   ,(   "
	# echo "`-'  `-'  `-'  `-'  `-'  `-'  `-'  `-'"
end

