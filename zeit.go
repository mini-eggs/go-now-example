package handler

import (
	"net/http"

	app "github.com/mini-eggs/go-now-example/app"
)

func H(w http.ResponseWriter, r *http.Request) {
	app.Default().ServeHTTP(w, r)
}
