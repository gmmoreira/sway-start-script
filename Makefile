GBP_DCH = gbp dch --ignore-branch \
		--debian-branch=master \
		--debian-tag='%(version)s' \
		--upstream-tag='%(version)s' \
		--git-author \
		--auto
default:
	echo "NOP"

snapshot:
	$(GBP_DCH) --snapshot

release:
	$(GBP_DCH) --release

package:
	gbp buildpackage --git-ignore-new -us -uc

.PHONY: clean

clean:
	rm -rf
