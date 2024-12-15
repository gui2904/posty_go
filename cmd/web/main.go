package main

import (
	"database/sql"
	"net/http"
	"log"
	_ "github.com/mattn/go-sqlite3"
)

func main() {
	db, err := sql.Open("sqlite3", "./app.db")
	if err != nil {
		log.Fatal(err)
	}
	log.Println(db)

	srv := http.Server{
		Addr: ":8000",
		Handler: routes(),
	}

	log.Println("Listening on :8000")
	srv.ListenAndServe()
}
