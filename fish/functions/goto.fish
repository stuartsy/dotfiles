function goto
	if count $argv > /dev/null
		if test "$argv" = corp
			ssh stuartsy.sfo.corp.google.com
		else if test "$argv" = cloud
			ssh stuart-cloudtop.c.googlers.com
		else
			echo "Unknown host: $argv[1]"
		end
	else
		echo "Usage: goto <corp/cloud>"	
	end
end