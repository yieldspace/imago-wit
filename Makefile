WIT_DIRS := $(shell find . -type d -name wit -exec dirname {} \;)

.PHONY: wit-fetch-build-all $(WIT_DIRS)
wit-fetch-build-all: $(WIT_DIRS)

# 各ディレクトリで wkg wit fetch を実行
$(WIT_DIRS):
	+@printf '[%s] wkg wit fetch\n' "$@"
	+@cd "$@" && wkg wit fetch && wkg wit build
