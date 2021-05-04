function up
	set times $argv
	while [ "$times" -gt "0" ];
		cd ..;
		set times math $times - 1;
    end
end