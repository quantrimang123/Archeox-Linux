source $ARCHEOX_INSTALL/preflight/guard.sh
source $ARCHEOX_INSTALL/preflight/begin.sh
run_logged $ARCHEOX_INSTALL/preflight/show-env.sh
run_logged $ARCHEOX_INSTALL/preflight/pacman.sh
run_logged $ARCHEOX_INSTALL/preflight/migrations.sh
run_logged $ARCHEOX_INSTALL/preflight/first-run-mode.sh
run_logged $ARCHEOX_INSTALL/preflight/disable-mkinitcpio.sh
