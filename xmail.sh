#!/usr/bin/env bash
#
# Copyright 2016, Barry(Kui Xu) < kuixu.tj@gmail.com >
# 
# This commline email tool is for linux users to notify the progress of your task.
# For example, you submit a long-time-running job with ==xmail==, then you will receive
# a notify message from xmail with a warning that your task is finished.
#
NUMARGS=$#
#echo -e \\n"Number of arguments: $NUMARGS"
if [ $NUMARGS -eq 0 ]; then
  usage
fi

function usage {
echo -e "----------xmail----------------

Usage:
        xmail -u useremail -s subject -m message [-option value]

Option 
        -u      [str]*  the email you want to send notification to. eg. xxx\@gmail.com
        -s      [str]*  the subject of the email.
        -m      [str]   more detaills can be placed.  
    
        -h              print this usage        

Examples:
        xmail -u xxx\@gmail.com -s "xxx task completed!"


xmail Version 0.0.1 
By Kui From ZhangLab 
"
exit 1
}
while getopts u:s:m:h FLAG; do
  case $FLAG in
    u)
      u=$OPTARG
      ;;
    s)
      s=$OPTARG
      ;;
    m)
      m=$OPTARG
      ;;
    h)
      usage
      ;;
    \?)
      usage
      echo "xmail -u useremail -s subject -m message [-option value]"
      exit 2
      ;;
  esac
done

#str="cs.xukui.cn/m.php?u=\"$u\"&s=\"$s\"&m=\"$m\""
#echo $str

curl -s -d src=bash -d u=$u -d s="$s" -d m="$m" cs.xukui.cn/m.php > ~/.mail.log
a=$(grep "Cannot send email" ~/.mail.log|wc -l)
if [ $a -gt 0 ];then
  echo "Send email failed, see log file: ~/.mail.log"
fi
