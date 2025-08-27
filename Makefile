WIT_DIRS := $(shell find . -type d -name wit -exec dirname {} \;)

.PHONY: wit-fetch-all $(WIT_DIRS)
wit-fetch-all: $(WIT_DIRS)

# 各ディレクトリで wkg wit fetch を実行
$(WIT_DIRS):
	+@printf '[%s] wkg wit fetch\n' "$@"
	+@cd "$@" && wkg wit fetch
