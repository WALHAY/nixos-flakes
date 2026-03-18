{ pkgs, ... }: {
	services.greetd = {
		enable = true;
	};

	services.sysc-greet = {
		enable = true;
		compositor = "niri";
	};
}
