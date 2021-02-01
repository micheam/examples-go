package main

import (
	"testing"

	"github.com/google/go-cmp/cmp"
)

func TestFilter_asc_byid(t *testing.T) {
	slice := []Model{
		{ID: "000"},
		{ID: "003"},
		{ID: "001"},
		{ID: "002"},
	}
	want := []Model{
		{ID: "000"},
		{ID: "001"},
		{ID: "002"},
		{ID: "003"},
	}
	Asc(slice, "id")
	if diff := cmp.Diff(want, slice); diff != "" {
		t.Errorf("Fileter mismatch (-want +got):\n%s", diff)
	}
}

func TestFilter_asc_byname(t *testing.T) {
	slice := []Model{
		{ID: "000", Name: "a"},
		{ID: "003", Name: "d"},
		{ID: "001", Name: "c"},
		{ID: "002", Name: "b"},
	}
	want := []Model{
		{ID: "000", Name: "a"},
		{ID: "002", Name: "b"},
		{ID: "001", Name: "c"},
		{ID: "003", Name: "d"},
	}
	Asc(slice, "name")
	if diff := cmp.Diff(want, slice); diff != "" {
		t.Errorf("Fileter mismatch (-want +got):\n%s", diff)
	}
}
