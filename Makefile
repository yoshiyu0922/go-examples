.DEFAULT_GOAL = help
help: ## help を表示する
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.PHONY: help

.PHONY:greet
greet: ## マルチプラットフォームを考慮したサンプルプログラムを実行する
	go run ./cmd/greet/main.go
