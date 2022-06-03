MAKEFLAGS += -s
--prepare-tgz:
	@mkdir -p ./tmp
	@cp ./common/install.sh ./tmp/install.sh
clean-archives:
	@rm -f *.tgz || true
	@echo 'Archives removed!'
clean-uncompressed-dirs:
	@rm -fR *.tgz-dir || true
	@echo 'Installing folders removed!'
clean: clean-archives clean-uncompressed-dirs
	@rm -rf ./tmp || true
	@echo 'Cleanup done!'
copy_to_klipper: --prepare-tgz
	@sed -i 's@__project_name__@copy_to_klipper@g' ./tmp/install.sh
	@tar --transform "s|common|copy_to_klipper|" \
	     --transform "s|tmp|copy_to_klipper|" \
	     -czf copy_to_klipper-$(shell grep 'Version:' './copy_to_klipper/copy_to_klipper.desktop' | cut -f 3 -d ' ').tgz ./copy_to_klipper ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "copy_to_klipper" ready!'
copy_filelist_to_klipper: --prepare-tgz
	@sed -i 's@__project_name__@copy_filelist_to_klipper@g' ./tmp/install.sh
	@tar --transform "s|common|copy_filelist_to_klipper|" \
	     --transform "s|tmp|copy_filelist_to_klipper|" \
	     -czf copy_filelist_to_klipper-$(shell grep 'Version:' './copy_filelist_to_klipper/copy_filelist_to_klipper.desktop' | cut -f 3 -d ' ').tgz ./copy_filelist_to_klipper ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "copy_filelist_to_klipper" ready!'
download_with_youtube-dl_here: --prepare-tgz
	@sed -i 's@__project_name__@download_with_youtube-dl_here@g' ./tmp/install.sh
	@tar --transform "s|common|download_with_youtube-dl_here|" \
	     --transform "s|tmp|download_with_youtube-dl_here|" \
	     -czf download_with_youtube-dl_here-$(shell grep 'Version:' './download_with_youtube-dl_here/download_with_youtube-dl_here.desktop' | cut -f 3 -d ' ').tgz ./download_with_youtube-dl_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "download_with_youtube-dl_here" ready!'
open_with_gvim: --prepare-tgz
	@sed -i 's@__project_name__@open_with_gvim@g' ./tmp/install.sh
	@tar --transform "s|common|open_with_gvim|" \
	     --transform "s|tmp|open_with_gvim|" \
	     -czf open_with_gvim-$(shell grep 'Version:' './open_with_gvim/open_with_gvim.desktop' | cut -f 3 -d ' ').tgz ./open_with_gvim ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_with_gvim" ready!'
open_konsole_here: --prepare-tgz
	@sed -i 's@__project_name__@open_konsole_here@g' ./tmp/install.sh
	@tar --transform "s|common|open_konsole_here|" \
	     --transform "s|tmp|open_konsole_here|" \
	     -czf open_konsole_here-$(shell grep 'Version:' './open_konsole_here/open_konsole_here.desktop' | cut -f 3 -d ' ').tgz ./open_konsole_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_konsole_here" ready!'
open_yakuake_here: --prepare-tgz
	@sed -i 's@__project_name__@open_yakuake_here@g' ./tmp/install.sh
	@tar --transform "s|common|open_yakuake_here|" \
	     --transform "s|tmp|open_yakuake_here|" \
	     -czf open_yakuake_here-$(shell grep 'Version:' './open_yakuake_here/open_yakuake_here.desktop' | cut -f 3 -d ' ').tgz ./open_yakuake_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_yakuake_here" ready!'
all:
	@make copy_to_klipper
	@make copy_filelist_to_klipper
	@make download_with_youtube-dl_here
	@make open_with_gvim
	@make open_konsole_here
	@make open_yakuake_here
