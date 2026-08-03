source $Archeox_INSTALL/preflight/guard.sh
source $Archeox_INSTALL/preflight/begin.sh
run_logged $Archeox_INSTALL/preflight/show-env.sh
run_logged $Archeox_INSTALL/preflight/pacman.sh
run_logged $Archeox_INSTALL/preflight/migrations.sh
run_logged $Archeox_INSTALL/preflight/first-run-mode.sh
run_logged $Archeox_INSTALL/preflight/disable-mkinitcpio.sh
