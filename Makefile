all: onetouch transcend

onetouch: onetouch/onetouch-archive-photo-2023.json onetouch/onetouch-archive-photo-2022.json onetouch/onetouch-archive-photo-2021.json

transcend: transcend/transcend-archive-photo-2023.json transcend/transcend-archive-photo-2022.json transcend/transcend-archive-photo-2021.json

validate: validate-2022 validate-2023

onetouch/onetouch-archive-photo-2023.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2020-2029/2023/photo/2023 -o $@

transcend/transcend-archive-photo-2023.json:
	tree -J -s /Volumes/Transcend/4_Archive/PhotographyArchive/photo/2023 -o $@

onetouch/onetouch-archive-photo-2022.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2020-2029/2022 -o $@

transcend/transcend-archive-photo-2022.json:
	tree -J -s /Volumes/Transcend/4_Archive/PhotographyArchive/photo/2022 -o $@

onetouch/onetouch-archive-photo-2021.json:
	tree -J -s /Volumes/onetouch/4_Archive/PhotographyArchive/photo/2020-2029/2021 -o $@

transcend/transcend-archive-photo-2021.json:
	tree -J -s /Volumes/Transcend/4_Archive/PhotographyArchive/photo/2021 -o $@

validate-2021:
	diff onetouch/onetouch-archive-photo-2021.json transcend/transcend-archive-photo-2021.json

validate-2022:
	diff onetouch/onetouch-archive-photo-2022.json transcend/transcend-archive-photo-2022.json

validate-2023:
	diff onetouch/onetouch-archive-photo-2023.json transcend/transcend-archive-photo-2023.json

