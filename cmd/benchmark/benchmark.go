package benchmark

import "fmt"

func makeSomething(n int) []string {
	// var r []string // slow
	r := make([]string, 0, n) // fast pattern
	for i := range n {
		r = append(r, fmt.Sprintf("%05d 何か", i))
	}
	return r
}
