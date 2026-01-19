.PHONY: push

push:
	@if [ -z "$(push)" ]; then \
		echo "ERROR: commit message required. Usage: make push=\"your commit message\""; \
		exit 1; \
	fi
	git add .
	git commit -m "$(push)"
	git push origin $$(git branch --show-current)

# make push="Add Sentinel policy validation"