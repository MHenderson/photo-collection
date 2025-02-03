all: onetouch

onetouch: json/onetouch-archive-photo-2023.json\
	  json/onetouch-archive-photo-2022.json\
	  json/onetouch-archive-photo-2021.json

.PHONY: all onetouch 

json/onetouch-archive-photo-2023.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2023 -o $@

json/onetouch-archive-photo-2022.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2022 -o $@

json/onetouch-archive-photo-2021.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2021 -o $@

