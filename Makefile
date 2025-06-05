.PHONY: build

build:
	podman run --rm \
	  -v /Users/kaveh/tmp/kmz/Roo-Code:/usr/src/app \
	  -w /usr/src/app \
	  node:22.16.0 \
	  sh -c "npm i -g pnpm && pnpm install && (cd webview-ui && pnpm install) && pnpm turbo build --filter='!@roo-code/web-*' --log-order grouped --output-logs new-only && pnpm turbo vsix --filter='!@roo-code/web-*' --log-order grouped --output-logs new-only"