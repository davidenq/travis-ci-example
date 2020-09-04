package main

import "testing"

func TestHello(t *testing.T) {
	want := "Hello world"
	got := Hello()
	if got != want {
		t.Errorf("got: %s, want: %s", got, want)
	}
}
