package main 

import (
  "github.com/tsklabs/tdk/ups"
  "tool/exec"
  "tool/cli"
)

city: "Lion"

webapp: ups.#Component & {
  name: "tester"
  version: "2.3.0"
  type: "console:app"
  extras: {...}
}

command: dir: {
  ls: exec.Run & {
    cmd: ["ls", "-lah"]
    stdout: string
  }
  print: cli.Print & {
    text: ls.stdout
    //text: strings.Join(ls.stdout, "\n")
  }
}

