default: test

test:
	go test ./...

release:
	@test -z $(GITHUB_TOKEN) || goreleaser release

dist: clean
	goreleaser build --snapshot

clean:
	rm -rf dist/*

.PHONY: dist
