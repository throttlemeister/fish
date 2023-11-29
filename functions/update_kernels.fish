function update_kernels -d 'Add all kernels again to systemdboot and regenerate initrd'
  sudo sdbootutil add-all-kernels --no-reuse-initrd
end