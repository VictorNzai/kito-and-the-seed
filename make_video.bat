@echo off
rem Joins all rendered parts into one video with sound. Needs ffmpeg on PATH.
rem Copy every partN folder's PNGs into renders\all\ first (frames are numbered f_0001 ... f_7200).
ffmpeg -framerate 24 -i renders\all\f_%%04d.png -i robot_soundtrack.wav -c:v libx264 -pix_fmt yuv420p -crf 18 -c:a aac -shortest Kito_final.mp4
