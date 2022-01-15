// Please use library.
package main

import (
	"fmt"
	_ "github.com/onedss/go-oryx-lib/aac"
	_ "github.com/onedss/go-oryx-lib/asprocess"
	_ "github.com/onedss/go-oryx-lib/errors"
	_ "github.com/onedss/go-oryx-lib/flv"
	_ "github.com/onedss/go-oryx-lib/gmoryx"
	_ "github.com/onedss/go-oryx-lib/http"
	_ "github.com/onedss/go-oryx-lib/https"
	_ "github.com/onedss/go-oryx-lib/json"
	_ "github.com/onedss/go-oryx-lib/kxps"
	_ "github.com/onedss/go-oryx-lib/logger"
	_ "github.com/onedss/go-oryx-lib/options"
	_ "github.com/onedss/go-oryx-lib/websocket"
)

const (
	Major, Minor, Revision = 0, 0, 1
)

func Version() string {
	return fmt.Sprintf("%v.%v.%v", Major, Minor, Revision)
}

func main() {
	fmt.Println(fmt.Sprintf("GO-ORYX-LIB/%v, please use as library in your project.", Version()))
	return
}
