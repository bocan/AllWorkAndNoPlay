clear ; s="All work and no play makes Jack a dull boy." ; c=10000 ; lower_col=1 ; lower_line=1 ; upper_col=`tput cols` upper_line=`tput lines` ; diff_col=$((upper_col-lower_col-3)) ; diff_line=$((upper_line-lower_line-1)) ; mids=`expr length "$s" / 2` ; mid_col=$(($diff_col/2-mids)) ; mid_line=$(($diff_line/2)) ; tput cup $mid_line $mid_col ; echo $s ; let y=1 ; while [ $y -lt $c ] ; do for x in $s ; do temp_col=$(($RANDOM % diff_col)) ; temp_line=$(($RANDOM % diff_line)) ; rand_col=$((temp_col + lower_col)) ; rand_line=$((temp_line + lower_line)) ; m_low=$(($mid_line - 1)) ; m_high=$(($mid_line + 1)) ; if [ $rand_line -gt $m_high -o $rand_line -lt $m_low ] ; then tput cup $rand_line $rand_col ; echo -n $x ; fi ; done ; let y=y+1 ; done
