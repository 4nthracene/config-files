if status is-interactive
    # Commands to run in interactive sessions can go here
	dircolors -p | sed 's/;42/;01/' > ~/.dircolors
end
