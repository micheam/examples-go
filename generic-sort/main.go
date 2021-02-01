package main

import (
	"sort"
	"time"
)

type Model struct {
	ID       string    `json:"id"`
	Name     string    `json:"name"`
	Birthday time.Time `json:"birthday"`
}

// may be panic
func Asc(slice []Model, fname string) {
	less := func(i, j int) bool {
		return slice[i].ID < slice[j].ID
	}
	sort.Slice(slice, less)
}
