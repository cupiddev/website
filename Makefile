.PHONY: clean config local publish release serve website

.DEFAULT_GOAL := local

hugo := hugo
#publish_repo_dir := dannorthnet.github.io
#publish_site_dir := $(publish_repo_dir)/docs

serve:
	$(hugo) serve --disableFastRender --noHTTPCache --verbose --forceSyncStatic --buildDrafts --buildFuture

local:
	$(hugo) --minify --cleanDestinationDir

config:
	$(hugo) config

clean:
	$(RM) -rf public

%.md:
	$(hugo) new $*.md
