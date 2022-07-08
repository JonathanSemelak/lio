#! /bin/bash
if [ -z "$LIOBIN" ] ; then
  LIOBIN=../../../liosolo/liosolo
fi
SALIDA=output
if [ -n "$1" ]
  then
    SALIDA=$1
fi

export GFORTRAN_UNBUFFERED_ALL=1
source ../../../liohome.sh
${LIOBIN} -i agua.in -c agua.xyz -v > $SALIDA

#export LIOHOME=other-code
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIOHOME/g2g:$LIOHOME/lioamber
#${LIOHOME}/liosolo/liosolo -i agua.in -c agua.xyz -v > $SALIDA
