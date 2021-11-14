.KEYBOARD=crkbd
.KEYMAP=pau_custom
.KEYMAP_PATH=~/qmk_firmware/keyboards/crkbd/keymaps/${.KEYMAP}
.PATH=~/dotfiles/keyboard/corne/keymap
.BUILD_DIR=~/qmk_firmware/.build

setup-qmk:
	qmk setup \
	sudo cp /home/pau/qmk_firmware/util/udev/50-qmk.rules /etc/udev/rules.d/

init:
	mkdir ${.KEYMAP_PATH}
	ln -s ${.PATH}/config.h ${.KEYMAP_PATH}/config.h
	ln -s ${.PATH}/keymap.c ${.KEYMAP_PATH}/keymap.c
	ln -s ${.PATH}/rules.mk ${.KEYMAP_PATH}/rules.mk

compile:
	qmk compile -kb ${.KEYBOARD} -km ${.KEYMAP}

flash:
	qmk flash -kb ${.KEYBOARD} -km ${.KEYMAP}