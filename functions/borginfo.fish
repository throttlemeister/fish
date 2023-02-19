function borginfo -d 'Show list of Borg Backups and allocated space at the backup location'
  echo "List of saved Borg backups:"
  sudo borg list /media/nas/iscsi/Backup/borg
  echo ""
  sudo borg info /media/nas/iscsi/Backup/borg
end