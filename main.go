package main

import (
	"fmt"
	"net/http"
	"os"
)

func health(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "ok")
}

func home(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "home")
}

func main() {

	http.HandleFunc("/health", health)
	http.HandleFunc("/", home)
	port := os.Getenv("PORT")
	http.ListenAndServe(":"+port, nil)
}
