source $ARCHEOX_"INSTALL/preflight/guard.sh
source $ARCHEOX_"INSTALL/preflight/begin.sh
run_logged $ARCHEOX_"INSTALL/preflight/show-env.sh
run_logged $ARCHEOX_"INSTALL/preflight/pacman.sh
run_logged $ARCHEOX_"INSTALL/preflight/migrations.sh
run_logged $ARCHEOX_"INSTALL/preflight/first-run-mode.sh
run_logged $ARCHEOX_"INSTALL/preflight/disable-mkinitcpio.sh
