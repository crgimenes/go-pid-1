package util

import "syscall"

func PowerOff() {
	syscall.Reboot(syscall.LINUX_REBOOT_CMD_POWER_OFF)
}
