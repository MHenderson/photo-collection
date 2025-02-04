all: onetouch

onetouch: json/onetouch-archive-photo-2023.json\
	  json/onetouch-archive-photo-2022.json\
	  json/onetouch-archive-photo-2021.json\
	  json/onetouch-archive-photo-2020.json

.PHONY: all onetouch 

json/onetouch-archive-photo-%.json: /Volumes/onetouch/4_Archive/PhotographyArchive/photo/%
	tree -J -s $< -o $@

