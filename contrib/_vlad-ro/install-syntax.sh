#!/bin/bash
#
# Install syntax files
#
# TODO: Change source_dir from relative to absolute path
#
mc_path=`which mc`

if [ -z "$mc_path" ];
then
	echo "mc not found, make sure it is installed."
	exit
fi

target_dir="${mc_path%/*/*}/share/mc/syntax"
source_dir="${0%/*}/../../misc/syntax"

if [ ! -d $target_dir ];
then
	echo "Target directory '$target_dir' doesn't exist."
	exit
fi

if [ ! -d $source_dir ];
then
	echo "Source directory '$source_dir' doesn't exist."
	exit
fi

perl_path=`which perl     || echo "/usr/bin/perl"`
python_path=`which python || echo "/usr/bin/python"`
ruby_path=`which ruby     || echo "/usr/bin/ruby"`

sed "s|@PERL@|$perl_path|;s|@PYTHON@|$python_path|;s|@RUBY@|$ruby_path|" $source_dir/Syntax.in > $target_dir/Syntax
cp $source_dir/*.syntax $target_dir
