.PHONY: build

build:
	docker run --rm \
	  -v /Users/kaveh/tmp/kmz/Roo-Code:/usr/src/app \
	  -w /usr/src/app \
	  node:lts \
	  sh -c "npm install && (cd webview-ui && npm install) && npm run build"