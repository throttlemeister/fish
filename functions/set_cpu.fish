function set_cpu -d "Set the CPU governor"
  /usr/bin/echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
end