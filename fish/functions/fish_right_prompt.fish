set rp_segment_separator \uE0B2
set bg_color white
set fg_color black

function fish_right_prompt
	set_color $bg_color
	echo -n "$rp_segment_separator" 
	set_color -b $bg_color
	set_color $fg_color
	echo -n (date +" %a %b %d | %I:%M %p ")

	set_color -b normal
	set_color normal
end