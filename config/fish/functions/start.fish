function start
	kitty @ launch --type=os-window --title gotop
	kitty @ launch --type=os-window --title neofetch
	kitty @ launch --type=os-window --title todo
	kitty @ launch --type=os-window --title clock
	kitty @ send-text --match title:gotop gotop\n 
	kitty @ send-text --match title:clock clock\n
	kitty @ send-text --match title:todo todo\n 
end
