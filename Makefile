--prepare-tgz:
	@mkdir -p ./tmp
	@cp ./common/install.sh ./tmp/install.sh
clean-archives:
	@rm -f *.tgz || true
	@echo 'Archives removed!'
clean: clean-archives
	@rm -rf ./tmp || true
	@echo 'Cleanup done!'
copy_to_klipper: --prepare-tgz
	@sed -i 's@__project_name__@copy_to_klipper@g' ./tmp/install.sh
	@tar --transform "s|common|copy_to_klipper|" \
	     --transform "s|tmp|copy_to_klipper|" \
	     -czf copy_to_klipper-$(shell grep 'Version:' './copy_to_klipper/copy_to_klipper.desktop' | cut -f 3 -d ' ').tgz ./copy_to_klipper ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive ready!'
open_with_gvim: --prepare-tgz
	@sed -i 's@__project_name__@open_with_gvim@g' ./tmp/install.sh
	@tar --transform "s|common|open_with_gvim|" \
	     --transform "s|tmp|open_with_gvim|" \
	     -czf open_with_gvim-$(shell grep 'Version:' './open_with_gvim/open_with_gvim.desktop' | cut -f 3 -d ' ').tgz ./open_with_gvim ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive ready!'
open_konsole_here: --prepare-tgz
	@sed -i 's@__project_name__@open_konsole_here@g' ./tmp/install.sh
	@tar --transform "s|common|open_konsole_here|" \
	     --transform "s|tmp|open_konsole_here|" \
	     -czf open_konsole_here-$(shell grep 'Version:' './open_konsole_here/open_konsole_here.desktop' | cut -f 3 -d ' ').tgz ./open_konsole_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive ready!'
open_yakuake_here: --prepare-tgz
	@sed -i 's@__project_name__@open_yakuake_here@g' ./tmp/install.sh
	@tar --transform "s|common|open_yakuake_here|" \
	     --transform "s|tmp|open_yakuake_here|" \
	     -czf open_yakuake_here-$(shell grep 'Version:' './open_yakuake_here/open_yakuake_here.desktop' | cut -f 3 -d ' ').tgz ./open_yakuake_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive ready!'
