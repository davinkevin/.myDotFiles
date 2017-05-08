function df
  dfc -w -p /dev/sda,rootfs ^ /dev/null; dfc -w -n -t cifs ^ /dev/null
end
