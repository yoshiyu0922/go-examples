package benchmark

import "testing"

func BenchmarkMakeSomething(b *testing.B) {
	b.ResetTimer()
	for range b.N {
		_ = makeSomething(1000)
	}
}
