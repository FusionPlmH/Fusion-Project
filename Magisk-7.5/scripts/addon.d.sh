##########################################################################################
#
# Magisk Survival Script for ROMs with addon.d support
# by topjohnwu
#
# Inspired by 99-flashafterupdate.sh of osm0sis @ xda-developers
#
##########################################################################################

V1_FUNCS=/tmp/backuptool.functions
V2_FUNCS=/postinstall/system/bin/backuptool_ab.functions

if [ -f $V1_FUNCS ]; then
  . $V1_FUNCS
  backuptool_ab=false
elif [ -f $V2_FUNCS ]; then
  . $V2_FUNCS
else
  return 1
fi

initialize() {
  MAGISKBIN=/data/adb/magisk

  if [ ! -d $MAGISKBIN ]; then
    echo "! Cannot find Magisk binaries!"
    exit 1
  fi

  # Load utility functions
  . $MAGISKBIN/util_functions.sh

  if $BOOTMODE; then
    # Override ui_print when booted
    ui_print() { log -t Magisk -- "$1"; }
  else
    OUTFD=
    setup_flashable
  fi
}

main() {
  if ! $backuptool_ab; then
    # Wait for post addon.d-v1 processes to finish
    sleep 5
  fi

  # Ensure we aren't in /tmp/addon.d anymore (since it's been deleted by addon.d)
  cd $TMPDIR

  $BOOTMODE || recovery_actions

  ui_print "************************"
  ui_print "* Magisk v$MAGISK_VER addon.d"
  ui_print "************************"

  mount_partitions
  check_data
  get_flags

  if $backuptool_ab; then
    # Swap the slot for addon.d-v2
    if [ ! -z $SLOT ]; then [ $SLOT = _a ] && SLOT=_b || SLOT=_a; fi
  fi

  find_boot_image

  [ -z $BOOTIMAGE ] && abort "! Unable to detect target image"
  ui_print "- Target image: $BOOTIMAGE"

  remove_system_su
  find_manager_apk
  patch_boot_image

  cd /
  # Cleanups
  $BOOTMODE || recovery_cleanup
  rm -rf $TMPDIR

  ui_print "- Done"
  exit 0
}

case "$1" in
  backup)
    # Stub
  ;;
  restore)
    # Stub
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    initialize
    if $backuptool_ab; then
      $BOOTMODE && su=su || su=sh
      exec $su -c "sh $0 addond-v2"
    else
      # Run in background, hack for addon.d-v1
      (main) &
    fi
  ;;
  addond-v2)
    initialize
    main
  ;;
esac
