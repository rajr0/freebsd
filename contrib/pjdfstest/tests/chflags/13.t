#!/bin/sh
# $FreeBSD: head/tools/regression/pjdfstest/tests/chflags/13.t 211352 2010-08-15 21:24:17Z pjd $

desc="chflags returns EFAULT if the path argument points outside the process's allocated address space"

dir=`dirname $0`
. ${dir}/../misc.sh

require chflags

echo "1..2"

expect EFAULT chflags NULL UF_NODUMP
expect EFAULT chflags DEADCODE UF_NODUMP
