#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�^�  ���Dp}���>nގ����       @[�PR#�20�@0�h4�4d�a�I�0)��B3SF��� d�4M�*��F�z�h dhhd2�hA$Jd�h��L��I���#ڣO
z����x��P�!B���F`s��;q�4�R��!
�   0(o�56���$����R�+�9m�'��B
т�U>մ�<�,�����?��y~c,��f8��Jņl�'Ӄk�b�v�e�V]4�$T�A�7�P�|�Sx!�����I�@J�Տ�4l��U�Ό�!ux��Z	8���y:񊖰E��Y[�X9��ē$:�:-�,a�_���d�<���ky>,��m
��~��t9����z�Ĭ�r&2�*T�:��c�`�H���͋��:O�~D��8i�����[M	-5�e�V�t΅V���酈�Iӕ��0�&A~�q��{��.)�:?p�bS	S
�y��nKA`����U�̠&w��ɣ87��D���%��Ӷ�5�#1!�OB�O�a����,�+�K.&���Ɔ-�Z�4�R>�AeKx�]b�$06_1a
腖�@%2�IzUjSZ��cz�Av�CtB��8�H���u4��"ʃ� �O�B�V�1�� >�bd�]��������Ϫ'1B2�7���Ē]�\�RZ��]��BBexC�