package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"regexp"
	"time"
)

type Entry struct {
	Title string `json:"title"`
	Date  string `json:"date"`
	Slug  string `json:"slug"`
	Link  string `json:"link"`
}

func main() {
	var paths = glob("./content/post")

	columns := [...]string{"title", "slug", "date"}
	entries := make([]Entry, 0)

	for _, path := range paths {
		file, err := os.Open(path)

		defer file.Close()

		if err != nil {
			panic(err)
		}

		scanner := bufio.NewScanner(file)

		data := make(map[string]string)

		for scanner.Scan() {
			line := scanner.Text()

			for _, column := range columns {
				pattern := regexp.MustCompile("^" + column + " = \"(.*)\"$")
				group := pattern.FindStringSubmatch(line)

				if len(group) > 0 {
					data[column] = group[1]
				}
			}
		}

		t, _ := time.Parse("2006-01-02T15:04:05+09:00", data["date"])
		data["date"] = t.Format("2006-01-02")
		data["link"] = t.Format("/2006/01/02/") + data["slug"]

		entry := Entry{data["title"], data["date"], data["slug"], data["link"]}
		entries = append(entries, entry)
	}

	jsonString, _ := json.Marshal(entries)
	ioutil.WriteFile("./static/entries.json", jsonString, os.FileMode(0644))

	fmt.Println("Generated static/entries.json with " + fmt.Sprint(len(entries)) + " entries")
}

func glob(directory string) []string {
	files, err := ioutil.ReadDir(directory)

	if err != nil {
		panic(err)
	}

	var paths []string
	for _, file := range files {
		if file.IsDir() {
			paths = append(paths, glob(filepath.Join(directory, file.Name()))...)
			continue
		}

		paths = append(paths, filepath.Join(directory, file.Name()))
	}

	return paths
}
