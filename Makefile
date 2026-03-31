MARKETPLACE_JSON := .claude-plugin/marketplace.json
CURRENT_VERSION := $(shell python3 -c "import json; d=json.load(open('$(MARKETPLACE_JSON)')); print(d['version'])")

.PHONY: version release patch minor major

version:
	@echo "Current version: $(CURRENT_VERSION)"

patch:
	@$(MAKE) _bump PART=patch

minor:
	@$(MAKE) _bump PART=minor

major:
	@$(MAKE) _bump PART=major

_bump:
	$(eval NEW_VERSION := $(shell python3 -c " \
		v = '$(CURRENT_VERSION)'.split('.'); \
		parts = {'major': 0, 'minor': 1, 'patch': 2}; \
		i = parts['$(PART)']; \
		v[i] = str(int(v[i]) + 1); \
		[v.__setitem__(j, '0') for j in range(i+1, 3)]; \
		print('.'.join(v)) \
	"))
	@python3 -c " \
		import json; \
		d = json.load(open('$(MARKETPLACE_JSON)')); \
		d['version'] = '$(NEW_VERSION)'; \
		json.dump(d, open('$(MARKETPLACE_JSON)', 'w'), indent=2); \
		open('$(MARKETPLACE_JSON)', 'a').write('\n') \
	"
	@echo "Bumped $(CURRENT_VERSION) → $(NEW_VERSION)"
	git add $(MARKETPLACE_JSON)
	git commit -m "chore: bump version to $(NEW_VERSION)"
	git tag "v$(NEW_VERSION)"
	@echo "Run 'make release' to push and publish v$(NEW_VERSION)"

release:
	git push
	git push --tags
	gh release create "v$(CURRENT_VERSION)" --generate-notes --title "v$(CURRENT_VERSION)"
	@echo "Released v$(CURRENT_VERSION)"
