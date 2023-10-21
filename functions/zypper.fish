# Defined in - @ line 1
function zypper --wraps='sudo zypper'
	if test $argv[1] = up
		sudo zypper dup
	else
		sudo zypper $argv;
	end
end