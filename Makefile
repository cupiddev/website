.PHONY: clean config local publish release serve website

.DEFAULT_GOAL := local

hugo := hugo
#publish_repo_dir := dannorthnet.github.io
#publish_site_dir := $(publish_repo_dir)/docs

serve:
	$(hugo) serve --disableFastRender --noHTTPCache --verbose --forceSyncStatic --buildDrafts --buildFuture

serveProd:
	$(hugo) serve --disableFastRender --verbose --forceSyncStatic

local:
	$(hugo) --minify --cleanDestinationDir

website:
	$(hugo) --destination $(publish_site_dir) --minify --cleanDestinationDir

config:
	$(hugo) config

clean:
	$(RM) -r public

%.md:
	$(hugo) new $*.md
