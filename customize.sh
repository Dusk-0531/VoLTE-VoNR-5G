# REPLACE="
# /system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/generic/mi9t
# /system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/mbn_sw.dig
# /system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw/mbn_sw.txt
# "

REPLACE="
/system/vendor/rfs/msm/mpss/readonly/vendor/mbn/mcfg_sw
"

# remove files in data:
FILES_TO_REMOVE="
/data/vendor/modem_fdr/fdr_check
"
for i in $FILES_TO_REMOVE; do
    ui_print "- Try to remove file: $i"
    [ -e $i ] && rm -rf $i && ui_print "- Remove $i success" || ui_print "- Remove $i failed"
done
