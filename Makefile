
release:
	@test -z $(GITHUB_TOKEN) || goreleaser release

dist:
	goreleaser build --snapshot
