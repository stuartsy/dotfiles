# We only want to do our user setup when a new actual terminal is opened, 
# not when fish is called for sub functions
if status is-interactive
	fish_logo
	print_waves -l 36
	set --universal fish_greeting
	fortune
	echo ""
end