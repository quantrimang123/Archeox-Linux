source $ILV_INSTALL/preflight/guard.sh
source $ILV_INSTALL/preflight/begin.sh
run_logged $ILV_INSTALL/preflight/show-env.sh
run_logged $ILV_INSTALL/preflight/pacman.sh
run_logged $ILV_INSTALL/preflight/migrations.sh
run_logged $ILV_INSTALL/preflight/first-run-mode.sh
run_logged $ILV_INSTALL/preflight/disable-mkinitcpio.sh
