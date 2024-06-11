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
compare_with_kompare: --prepare-tgz
	@sed -i 's@__project_name__@compare_with_kompare@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|compare_with_kompare|" \
	     --transform "s|tmp|compare_with_kompare|" \
	     -czf compare_with_kompare-$(shell grep 'Version:' './compare_with_kompare/compare_with_kompare.desktop' | cut -f 3 -d ' ').tgz ./compare_with_kompare ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "compare_with_kompare" ready!'
compose_with_betterbird: --prepare-tgz
	@sed -i 's@__project_name__@compose_with_betterbird@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|compose_with_betterbird|" \
	     --transform "s|tmp|compose_with_betterbird|" \
	     -czf compose_with_betterbird-$(shell grep 'Version:' './compose_with_betterbird/compose_with_betterbird.desktop' | cut -f 3 -d ' ').tgz ./compose_with_betterbird ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "compose_with_betterbird" ready!'
compose_with_betterbird-flatpak: --prepare-tgz
	@sed -i 's@__project_name__@compose_with_betterbird-flatpak@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|compose_with_betterbird-flatpak|" \
	     --transform "s|tmp|compose_with_betterbird-flatpak|" \
	     -czf compose_with_betterbird-flatpak-$(shell grep 'Version:' './compose_with_betterbird-flatpak/compose_with_betterbird-flatpak.desktop' | cut -f 3 -d ' ').tgz ./compose_with_betterbird-flatpak ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "compose_with_betterbird-flatpak" ready!'
compose_with_thunderbird: --prepare-tgz
	@sed -i 's@__project_name__@compose_with_thunderbird@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|compose_with_thunderbird|" \
	     --transform "s|tmp|compose_with_thunderbird|" \
	     -czf compose_with_thunderbird-$(shell grep 'Version:' './compose_with_thunderbird/compose_with_thunderbird.desktop' | cut -f 3 -d ' ').tgz ./compose_with_thunderbird ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "compose_with_thunderbird" ready!'
compose_with_thunderbird-flatpak: --prepare-tgz
	@sed -i 's@__project_name__@compose_with_thunderbird-flatpak@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|compose_with_thunderbird-flatpak|" \
	     --transform "s|tmp|compose_with_thunderbird-flatpak|" \
	     -czf compose_with_thunderbird-flatpak-$(shell grep 'Version:' './compose_with_thunderbird-flatpak/compose_with_thunderbird-flatpak.desktop' | cut -f 3 -d ' ').tgz ./compose_with_thunderbird-flatpak ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "compose_with_thunderbird-flatpak" ready!'
copy_to_klipper: --prepare-tgz
	@sed -i 's@__project_name__@copy_to_klipper@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|copy_to_klipper|" \
	     --transform "s|tmp|copy_to_klipper|" \
	     -czf copy_to_klipper-$(shell grep 'Version:' './copy_to_klipper/copy_to_klipper.desktop' | cut -f 3 -d ' ').tgz ./copy_to_klipper ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "copy_to_klipper" ready!'
copy_filelist_to_klipper: --prepare-tgz
	@sed -i 's@__project_name__@copy_filelist_to_klipper@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|copy_filelist_to_klipper|" \
	     --transform "s|tmp|copy_filelist_to_klipper|" \
	     -czf copy_filelist_to_klipper-$(shell grep 'Version:' './copy_filelist_to_klipper/copy_filelist_to_klipper.desktop' | cut -f 3 -d ' ').tgz ./copy_filelist_to_klipper ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "copy_filelist_to_klipper" ready!'
download_with_youtube-dl_here: --prepare-tgz
	@sed -i 's@__project_name__@download_with_youtube-dl_here@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|download_with_youtube-dl_here|" \
	     --transform "s|tmp|download_with_youtube-dl_here|" \
	     -czf download_with_youtube-dl_here-$(shell grep 'Version:' './download_with_youtube-dl_here/download_with_youtube-dl_here.desktop' | cut -f 3 -d ' ').tgz ./download_with_youtube-dl_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "download_with_youtube-dl_here" ready!'
download_with_yt-dlp_here: --prepare-tgz
	@sed -i 's@__project_name__@download_with_yt-dlp_here@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|download_with_yt-dlp_here|" \
	     --transform "s|tmp|download_with_yt-dlp_here|" \
	     -czf download_with_yt-dlp_here-$(shell grep 'Version:' './download_with_yt-dlp_here/download_with_yt-dlp_here.desktop' | cut -f 3 -d ' ').tgz ./download_with_yt-dlp_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "download_with_yt-dlp_here" ready!'
open_with_gvim: --prepare-tgz
	@sed -i 's@__project_name__@open_with_gvim@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|open_with_gvim|" \
	     --transform "s|tmp|open_with_gvim|" \
	     -czf open_with_gvim-$(shell grep 'Version:' './open_with_gvim/open_with_gvim.desktop' | cut -f 3 -d ' ').tgz ./open_with_gvim ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_with_gvim" ready!'
open_konsole_here: --prepare-tgz
	@sed -i 's@__project_name__@open_konsole_here@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|open_konsole_here|" \
	     --transform "s|tmp|open_konsole_here|" \
	     -czf open_konsole_here-$(shell grep 'Version:' './open_konsole_here/open_konsole_here.desktop' | cut -f 3 -d ' ').tgz ./open_konsole_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_konsole_here" ready!'
open_yakuake_here: --prepare-tgz
	@sed -i 's@__project_name__@open_yakuake_here@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|open_yakuake_here|" \
	     --transform "s|tmp|open_yakuake_here|" \
	     -czf open_yakuake_here-$(shell grep 'Version:' './open_yakuake_here/open_yakuake_here.desktop' | cut -f 3 -d ' ').tgz ./open_yakuake_here ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "open_yakuake_here" ready!'
scan_with_clamav: --prepare-tgz
	@sed -i 's@__project_name__@scan_with_clamav@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|scan_with_clamav|" \
	     --transform "s|tmp|scan_with_clamav|" \
	     -czf scan_with_clamav-$(shell grep 'Version:' './scan_with_clamav/scan_with_clamav.desktop' | cut -f 3 -d ' ').tgz ./scan_with_clamav ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "scan_with_clamav" ready!'
sqlite_tools: --prepare-tgz
	@sed -i 's@__project_name__@sqlite_tools@g' ./tmp/install.sh
	@tar --exclude=*.swp \
	     --exclude=*.yaml \
	     --transform "s|common|sqlite_tools|" \
	     --transform "s|tmp|sqlite_tools|" \
	     -czf sqlite_tools-$(shell grep 'Version:' './sqlite_tools/sqlite_tools.desktop' | cut -f 3 -d ' ').tgz ./sqlite_tools ./common/Makefile ./tmp/install.sh ./common/LICENSE
	@echo 'Archive "sqlite_tools" ready!'
all:
	@make compare_with_kompare
	@make compose_with_betterbird
	@make compose_with_betterbird-flatpak
	@make compose_with_thunderbird
	@make compose_with_thunderbird-flatpak
	@make copy_to_klipper
	@make copy_filelist_to_klipper
	@make download_with_youtube-dl_here
	@make download_with_yt-dlp_here
	@make open_with_gvim
	@make open_konsole_here
	@make open_yakuake_here
	@make scan_with_clamav
	@make sqlite_tools
