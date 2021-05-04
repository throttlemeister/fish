function up
	set times $argv
	while test "$times" -gt 0;
		cd ..;
		set times (math $times - 1);
    end
end
