#!/usr/bin/env bash
#
if [ -d ~/.config/nvim ];then
	rm -vfr ~/.config/nvim
	mkdir ~/.config/nvim
		else
			mkdir ~/.config/nvim
fi
if [ -d ~/.local/share/nvim ];then
	rm -vfr ~/.local/share/nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		~/.local/share/nvim/site/pack/packer/start/packer.nvim
		else
			git clone --depth 1 https://github.com/wbthomason/packer.nvim\
				~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi
ln -s $(pwd) ~/.config/nvim
