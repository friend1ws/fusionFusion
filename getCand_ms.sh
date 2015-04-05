#! /bin/sh

INPUT=$1

echo "python getJuncInfo_ms2.py ${INPUT} | sort -k1,1 -k2,2n -k4,4 -k 5,5n - > junction_ms.txt"
python getJuncInfo_ms2.py ${INPUT} | sort -k1,1 -k2,2n -k4,4 -k 5,5n - > junction_ms.txt

echo "python summarizeJunc_ms.py junction_ms.txt > junction_ms.summarized.txt"
python summarizeJunc_ms.py junction_ms.txt > junction_ms.summarized.txt

echo "python filterJunc_ms.py junction_ms.summarized.txt > junction_ms.summarized.filt.txt"
python filterJunc_ms.py junction_ms.summarized.txt > junction_ms.summarized.filt.txt

