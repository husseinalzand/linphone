
archs=x86_64 arm64 armv7
packages=antlr3c bellesip bzrtp cunit ffmpeg gsm libilbcrfc3951 linphone ms2 msilbc mssilk mswebrtc opus ortp polarssl speex srtp vpx
LINPHONE_IPHONE_VERSION=$(shell git describe --always)

.PHONY: all
.SILENT: sdk
#turn off parallelism because it is not yet handled properly
.NOTPARALLEL:
all: build

package-in-list-%:
	if ! grep -q " $* " <<< " $(packages) "; then \
		echo "$* not in list of available packages: $(packages)"; \
		exit 3; \
	fi

build-%: package-in-list-% $(addsuffix -build-%, $(archs))
	@echo "Build of $* terminated"

clean-%: package-in-list-% $(addsuffix -clean, $(archs))
	@echo "Clean of $* terminated"

veryclean-%: package-in-list-% $(addsuffix -veryclean, $(archs))
	@echo "Veryclean of $* terminated"

clean: $(addprefix clean-,$(packages))

veryclean: $(addprefix veryclean-,$(packages))

sdk:
	for arch in $(archs); do $(MAKE) -C WORK/ios-$$arch/cmake EP_dummy_libraries; done && \
	archives=`find liblinphone-sdk/x86_64-apple-darwin.ios -name *.a` && \
	rm -rf liblinphone-sdk/apple-darwin && \
	mkdir -p liblinphone-sdk/apple-darwin && \
	cp -rf liblinphone-sdk/x86_64-apple-darwin.ios/include liblinphone-sdk/apple-darwin/. && \
	cp -rf liblinphone-sdk/x86_64-apple-darwin.ios/share liblinphone-sdk/apple-darwin/. && \
	for archive in $$archives ; do \
		armv7_path=`echo $$archive | sed -e "s/x86_64/armv7/"`; \
		arm64_path=`echo $$archive | sed -e "s/x86_64/arm64/"`; \
		i386_path=`echo $$archive | sed -e "s/x86_64/i386/"`; \
		x86_64_path=`echo $$archive | sed -e "s/x86_64/x86_64/"`; \
		destpath=`echo $$archive | sed -e "s/-debug//" | sed -e "s/x86_64-//" | sed -e "s/\.ios//"`; \
		all_paths=`echo $$archive`; \
		all_archs="x86_64"; \
		mkdir -p `dirname $$destpath`; \
			if test -f "$$arm64_path"; then \
		all_paths=`echo $$all_paths $$arm64_path`; \
		all_archs="$$all_archs,arm64" ; \
	else \
		echo "WARNING: archive `basename $$archive` exists in x86_64 tree but does not exists in arm64 tree: $$arm64_path."; \
	fi; \
	if test -f "$$armv7_path"; then \
		all_paths=`echo $$all_paths $$armv7_path`; \
		all_archs="$$all_archs,armv7" ; \
	else \
		echo "WARNING: archive `basename $$archive` exists in x86_64 tree but does not exists in armv7 tree: $$armv7_path."; \
	fi; \
 \
		echo "[x86_64 arm64 armv7] Mixing `basename $$archive` in $$destpath"; \
		lipo -create $$all_paths -output $$destpath; \
	done; \
	echo 'NOTE: the following libraries were STUBBED:'; \
	cat WORK/ios-x86_64/Build/dummy_libraries/dummy_libraries.txt

build: $(addsuffix -build, $(archs))
	$(MAKE) sdk

ipa: build
	xcodebuild -configuration Release \
	&& xcrun -sdk iphoneos PackageApplication -v build/Release-iphoneos/linphone.app -o $$PWD/linphone-iphone.ipa

zipsdk: sdk
	echo "Generating SDK zip file for version $(LINPHONE_IPHONE_VERSION)"
	zip -r liblinphone-iphone-sdk-$(LINPHONE_IPHONE_VERSION).zip \
	liblinphone-sdk/apple-darwin \
	liblinphone-tutorials \
	-x liblinphone-tutorials/hello-world/build\* \
	-x liblinphone-tutorials/hello-world/hello-world.xcodeproj/*.pbxuser \
	-x liblinphone-tutorials/hello-world/hello-world.xcodeproj/*.mode1v3

pull-transifex:
	tx pull -af

push-transifex:
	./Tools/i18n_generate_strings_files.sh && \
	tx push -s -f --no-interactive

zipres:
	@tar -czf ios_assets.tar.gz Resources iTunesArtwork


x86_64: x86_64-build

x86_64-build: $(addprefix x86_64-build-, $(packages))
	@echo "Done"

x86_64-clean: $(addprefix x86_64-clean-, $(packages))
	@echo "Done"

x86_64-veryclean: $(addprefix x86_64-veryclean-, $(packages))
	@echo "Done"

x86_64-build-%: package-in-list-%
	rm -f WORK/ios-x86_64/Stamp/EP_$*/EP_$*-update; \
	$(MAKE) -C WORK/ios-x86_64/cmake EP_$*

x86_64-clean-%: package-in-list-%
	$(MAKE) -C WORK/ios-x86_64/Build/$* clean; \
	rm -f WORK/ios-x86_64/Stamp/EP_$*/EP_$*-build; \
	rm -f WORK/ios-x86_64/Stamp/EP_$*/EP_$*-install;

x86_64-veryclean-%: package-in-list-%
	test -f WORK/ios-x86_64/Build/$*/install_manifest.txt && \
	cat WORK/ios-x86_64/Build/$*/install_manifest.txt | xargs rm; \
	rm -rf WORK/ios-x86_64/Build/$*/*; \
	rm -f WORK/ios-x86_64/Stamp/EP_$*/*; \
	echo "Run 'make x86_64-build-$*' to rebuild $* correctly.";

x86_64-veryclean-ffmpeg:
	$(MAKE) -C WORK/ios-x86_64/Build/ffmpeg uninstall; \
	rm -rf WORK/ios-x86_64/Build/ffmpeg/*; \
	rm -f WORK/ios-x86_64/Stamp/EP_ffmpeg/*; \
	echo "Run 'make x86_64-build-ffmpeg' to rebuild ffmpeg correctly.";

x86_64-clean-openh264:
	cd WORK/ios-x86_64/Build/openh264; \
	$(MAKE) -f ../../../../submodules/externals/openh264/Makefile clean; \
	rm -f WORK/ios-x86_64/Stamp/EP_openh264/EP_openh264-build; \
	rm -f WORK/ios-x86_64/Stamp/EP_openh264/EP_openh264-install;

x86_64-veryclean-openh264:
	rm -rf liblinphone-sdk/x86_64-apple-darwin.ios/include/wels; \
	rm -f liblinphone-sdk/x86_64-apple-darwin.ios/lib/libopenh264.*; \
	rm -rf WORK/ios-x86_64/Build/openh264/*; \
	rm -f WORK/ios-x86_64/Stamp/EP_openh264/*; \
	echo "Run 'make x86_64-build-openh264' to rebuild openh264 correctly.";

x86_64-veryclean-vpx:
	rm -rf liblinphone-sdk/x86_64-apple-darwin.ios/include/vpx; \
	rm -f liblinphone-sdk/x86_64-apple-darwin.ios/lib/libvpx.*; \
	rm -rf WORK/ios-x86_64/Build/vpx/*; \
	rm -f WORK/ios-x86_64/Stamp/EP_vpx/*; \
	echo "Run 'make x86_64-build-vpx' to rebuild vpx correctly.";

arm64: arm64-build

arm64-build: $(addprefix arm64-build-, $(packages))
	@echo "Done"

arm64-clean: $(addprefix arm64-clean-, $(packages))
	@echo "Done"

arm64-veryclean: $(addprefix arm64-veryclean-, $(packages))
	@echo "Done"

arm64-build-%: package-in-list-%
	rm -f WORK/ios-arm64/Stamp/EP_$*/EP_$*-update; \
	$(MAKE) -C WORK/ios-arm64/cmake EP_$*

arm64-clean-%: package-in-list-%
	$(MAKE) -C WORK/ios-arm64/Build/$* clean; \
	rm -f WORK/ios-arm64/Stamp/EP_$*/EP_$*-build; \
	rm -f WORK/ios-arm64/Stamp/EP_$*/EP_$*-install;

arm64-veryclean-%: package-in-list-%
	test -f WORK/ios-arm64/Build/$*/install_manifest.txt && \
	cat WORK/ios-arm64/Build/$*/install_manifest.txt | xargs rm; \
	rm -rf WORK/ios-arm64/Build/$*/*; \
	rm -f WORK/ios-arm64/Stamp/EP_$*/*; \
	echo "Run 'make arm64-build-$*' to rebuild $* correctly.";

arm64-veryclean-ffmpeg:
	$(MAKE) -C WORK/ios-arm64/Build/ffmpeg uninstall; \
	rm -rf WORK/ios-arm64/Build/ffmpeg/*; \
	rm -f WORK/ios-arm64/Stamp/EP_ffmpeg/*; \
	echo "Run 'make arm64-build-ffmpeg' to rebuild ffmpeg correctly.";

arm64-clean-openh264:
	cd WORK/ios-arm64/Build/openh264; \
	$(MAKE) -f ../../../../submodules/externals/openh264/Makefile clean; \
	rm -f WORK/ios-arm64/Stamp/EP_openh264/EP_openh264-build; \
	rm -f WORK/ios-arm64/Stamp/EP_openh264/EP_openh264-install;

arm64-veryclean-openh264:
	rm -rf liblinphone-sdk/arm64-apple-darwin.ios/include/wels; \
	rm -f liblinphone-sdk/arm64-apple-darwin.ios/lib/libopenh264.*; \
	rm -rf WORK/ios-arm64/Build/openh264/*; \
	rm -f WORK/ios-arm64/Stamp/EP_openh264/*; \
	echo "Run 'make arm64-build-openh264' to rebuild openh264 correctly.";

arm64-veryclean-vpx:
	rm -rf liblinphone-sdk/arm64-apple-darwin.ios/include/vpx; \
	rm -f liblinphone-sdk/arm64-apple-darwin.ios/lib/libvpx.*; \
	rm -rf WORK/ios-arm64/Build/vpx/*; \
	rm -f WORK/ios-arm64/Stamp/EP_vpx/*; \
	echo "Run 'make arm64-build-vpx' to rebuild vpx correctly.";

armv7: armv7-build

armv7-build: $(addprefix armv7-build-, $(packages))
	@echo "Done"

armv7-clean: $(addprefix armv7-clean-, $(packages))
	@echo "Done"

armv7-veryclean: $(addprefix armv7-veryclean-, $(packages))
	@echo "Done"

armv7-build-%: package-in-list-%
	rm -f WORK/ios-armv7/Stamp/EP_$*/EP_$*-update; \
	$(MAKE) -C WORK/ios-armv7/cmake EP_$*

armv7-clean-%: package-in-list-%
	$(MAKE) -C WORK/ios-armv7/Build/$* clean; \
	rm -f WORK/ios-armv7/Stamp/EP_$*/EP_$*-build; \
	rm -f WORK/ios-armv7/Stamp/EP_$*/EP_$*-install;

armv7-veryclean-%: package-in-list-%
	test -f WORK/ios-armv7/Build/$*/install_manifest.txt && \
	cat WORK/ios-armv7/Build/$*/install_manifest.txt | xargs rm; \
	rm -rf WORK/ios-armv7/Build/$*/*; \
	rm -f WORK/ios-armv7/Stamp/EP_$*/*; \
	echo "Run 'make armv7-build-$*' to rebuild $* correctly.";

armv7-veryclean-ffmpeg:
	$(MAKE) -C WORK/ios-armv7/Build/ffmpeg uninstall; \
	rm -rf WORK/ios-armv7/Build/ffmpeg/*; \
	rm -f WORK/ios-armv7/Stamp/EP_ffmpeg/*; \
	echo "Run 'make armv7-build-ffmpeg' to rebuild ffmpeg correctly.";

armv7-clean-openh264:
	cd WORK/ios-armv7/Build/openh264; \
	$(MAKE) -f ../../../../submodules/externals/openh264/Makefile clean; \
	rm -f WORK/ios-armv7/Stamp/EP_openh264/EP_openh264-build; \
	rm -f WORK/ios-armv7/Stamp/EP_openh264/EP_openh264-install;

armv7-veryclean-openh264:
	rm -rf liblinphone-sdk/armv7-apple-darwin.ios/include/wels; \
	rm -f liblinphone-sdk/armv7-apple-darwin.ios/lib/libopenh264.*; \
	rm -rf WORK/ios-armv7/Build/openh264/*; \
	rm -f WORK/ios-armv7/Stamp/EP_openh264/*; \
	echo "Run 'make armv7-build-openh264' to rebuild openh264 correctly.";

armv7-veryclean-vpx:
	rm -rf liblinphone-sdk/armv7-apple-darwin.ios/include/vpx; \
	rm -f liblinphone-sdk/armv7-apple-darwin.ios/lib/libvpx.*; \
	rm -rf WORK/ios-armv7/Build/vpx/*; \
	rm -f WORK/ios-armv7/Stamp/EP_vpx/*; \
	echo "Run 'make armv7-build-vpx' to rebuild vpx correctly.";


help-prepare-options:
	@echo "prepare.py was previously executed with the following options:"
	@echo "   ./prepare.py"

help: help-prepare-options
	@echo ""
	@echo "(please read the README.md file first)"
	@echo ""
	@echo "Available architectures: x86_64 arm64 armv7"
	@echo "Available packages: antlr3c bellesip bzrtp cunit ffmpeg gsm libilbcrfc3951 linphone ms2 msilbc mssilk mswebrtc opus ortp polarssl speex srtp vpx"
	@echo ""
	@echo "Available targets:"
	@echo ""
	@echo "   * all or build: builds all architectures and creates the liblinphone SDK"
	@echo "   * sdk: creates the liblinphone SDK. Use this only after a full build"
	@echo "   * zipsdk: generates a ZIP archive of liblinphone-sdk/apple-darwin containing the SDK. Use this only after SDK is built."
	@echo "   * zipres: creates a tar.gz file with all the resources (images)"
	@echo ""
	@echo "=== Advanced usage ==="
	@echo ""
	@echo "   * build-[package]: builds the package for all architectures"
	@echo "   * clean-[package]: cleans package compilation for all architectures"
	@echo "   * veryclean-[package]: cleans the package for all architectures"
	@echo ""
	@echo "   * [x86_64|arm64|armv7]-build-[package]: builds a package for the selected architecture"
	@echo "   * [x86_64|arm64|armv7]-clean-[package]: cleans package compilation for the selected architecture"
	@echo "   * [x86_64|arm64|armv7]-veryclean-[package]: cleans the package for the selected architecture"
	@echo ""
