source $archeox_INSTALL/preflight/guard.sh
source $archeox_INSTALL/preflight/begin.sh
run_logged $archeox_INSTALL/preflight/show-env.sh
run_logged $archeox_INSTALL/preflight/pacman.sh
run_logged $archeox_INSTALL/preflight/migrations.sh
run_logged $archeox_INSTALL/preflight/first-run-mode.sh
run_logged $archeox_INSTALL/preflight/disable-mkinitcpio.sh
