package main

import (
	"fmt"
	"time"

	"init/util"
)

func main() {
	fmt.Println("INIT IN GO!")
	time.Sleep(5 * time.Second)
	util.PowerOff()

}
