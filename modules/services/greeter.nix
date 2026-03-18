{ pkgs, ... }: {
	services.greetd = {
		enable = true;
		settings = {
			default_session = {
				command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --remember-session --cmd niri";
				user = "walhay";
			};
		};
	};

	systemd.services.greetd.serviceConfig = {
		type = "idle";
		StandardInput = "tty";
		StandardOutput = "tty";
		StandardError = "journal";
		TTYReset = true;
		TTYVHangup = true;
		TTYVTDisallocate = true;
	};
}
