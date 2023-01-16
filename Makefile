SOURCE=data/source
TARGET=data/cleaned

define copy_csv_and_pdf
	@cp "${SOURCE}/$(1)/$(2).csv" "${TARGET}/$(1)/$(3).csv"
	@cp "${SOURCE}/$(1)/$(2).pdf" "${TARGET}/$(1)/$(3).pdf"
endef

clean-data: 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022

2012:
	@echo "Prepare 2012 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2012
	@mkdir -p ${TARGET}/2012
	@echo "... copy and rename source files"
	@cp ${SOURCE}/2012/charlottenburg-wilmersdorf.csv ${TARGET}/2012/charlottenburg-wilmersdorf.csv
	@cp ${SOURCE}/2012/friedrichshain-kreuzberg.csv ${TARGET}/2012/friedrichshain-kreuzberg.csv
	@cp ${SOURCE}/2012/lichtenberg.csv ${TARGET}/2012/lichtenberg.csv
	@cp ${SOURCE}/2012/marzahn-hellersdorf.csv ${TARGET}/2012/marzahn-hellersdorf.csv
	@cp ${SOURCE}/2012/mitte.csv ${TARGET}/2012/mitte.csv
	@cp ${SOURCE}/2012/neukoelln.csv ${TARGET}/2012/neukoelln.csv
	@cp ${SOURCE}/2012/pankow.csv ${TARGET}/2012/pankow.csv
	@cp ${SOURCE}/2012/reinickendorf.csv ${TARGET}/2012/reinickendorf.csv
	@cp ${SOURCE}/2012/spandau.csv ${TARGET}/2012/spandau.csv
	@cp ${SOURCE}/2012/steglitz-zehlendorf.csv ${TARGET}/2012/steglitz-zehlendorf.csv
	@cp ${SOURCE}/2012/tempelhof-schoeneberg.csv ${TARGET}/2012/tempelhof-schoeneberg.csv
	@cp ${SOURCE}/2012/treptow-koepenick.csv ${TARGET}/2012/treptow-koepenick.csv
	@echo "... restructure CSV"
	@. bin/convert_pre_2015.sh ${TARGET}/2012
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2012

2013:
	@echo "Prepare 2013 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2013
	@mkdir -p ${TARGET}/2013
	@echo "... copy and rename source files"
	@cp ${SOURCE}/2013/charlottenburg-wilmersdorf.csv ${TARGET}/2013/charlottenburg-wilmersdorf.csv
	@cp ${SOURCE}/2013/friedrichshain-kreuzberg.csv ${TARGET}/2013/friedrichshain-kreuzberg.csv
	@cp ${SOURCE}/2013/lichtenberg.csv ${TARGET}/2013/lichtenberg.csv
	@cp ${SOURCE}/2013/marzahn-hellersdorf.csv ${TARGET}/2013/marzahn-hellersdorf.csv
	@cp ${SOURCE}/2013/mitte.csv ${TARGET}/2013/mitte.csv
	@cp ${SOURCE}/2013/neukoelln.csv ${TARGET}/2013/neukoelln.csv
	@cp ${SOURCE}/2013/pankow.csv ${TARGET}/2013/pankow.csv
	@cp ${SOURCE}/2013/reinickendorf.csv ${TARGET}/2013/reinickendorf.csv
	@cp ${SOURCE}/2013/spandau.csv ${TARGET}/2013/spandau.csv
	@cp ${SOURCE}/2013/steglitz-zehlendorf.csv ${TARGET}/2013/steglitz-zehlendorf.csv
	@cp ${SOURCE}/2013/tempelhof-schoeneberg.csv ${TARGET}/2013/tempelhof-schoeneberg.csv
	@cp ${SOURCE}/2013/treptow-koepenick.csv ${TARGET}/2013/treptow-koepenick.csv
	@echo "... restructure CSV"
	@. bin/convert_pre_2015.sh ${TARGET}/2013
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2013

2014:
	@echo "Prepare 2014 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2014
	@mkdir -p ${TARGET}/2014
	@echo "... copy and rename source files"
	@cp ${SOURCE}/2014/charlottenburg-wilmersdorf.csv ${TARGET}/2014/charlottenburg-wilmersdorf.csv
	@cp ${SOURCE}/2014/friedrichshain-kreuzberg.csv ${TARGET}/2014/friedrichshain-kreuzberg.csv
	@cp ${SOURCE}/2014/lichtenberg.csv ${TARGET}/2014/lichtenberg.csv
	@cp ${SOURCE}/2014/marzahn-hellersdorf.csv ${TARGET}/2014/marzahn-hellersdorf.csv
	@cp ${SOURCE}/2014/mitte.csv ${TARGET}/2014/mitte.csv
	@cp ${SOURCE}/2014/neukoelln.csv ${TARGET}/2014/neukoelln.csv
	@cp ${SOURCE}/2014/pankow.csv ${TARGET}/2014/pankow.csv
	@cp ${SOURCE}/2014/reinickendorf.csv ${TARGET}/2014/reinickendorf.csv
	@cp ${SOURCE}/2014/spandau.csv ${TARGET}/2014/spandau.csv
	@cp ${SOURCE}/2014/standesamt_i.csv ${TARGET}/2014/standesamt_i.csv
	@cp ${SOURCE}/2014/steglitz-zehlendorf.csv ${TARGET}/2014/steglitz-zehlendorf.csv
	@cp ${SOURCE}/2014/tempelhof-schoeneberg.csv ${TARGET}/2014/tempelhof-schoeneberg.csv
	@cp ${SOURCE}/2014/treptow-koepenick.csv ${TARGET}/2014/treptow-koepenick.csv
	@echo "... restructure CSV"
	@. bin/convert_pre_2015.sh ${TARGET}/2014
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2014

2015:
	@echo "Prepare 2015 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2015
	@mkdir -p ${TARGET}/2015
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2015,"charlottenburg-wilmersdorf","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2015,"friedrichshain-kreuzberg","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2015,"lichtenberg","lichtenberg")
	$(call copy_csv_and_pdf,2015,"marzahn-hellersdorf","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2015,"mitte","mitte")
	$(call copy_csv_and_pdf,2015,"neukoelln","neukoelln")
	$(call copy_csv_and_pdf,2015,"pankow","pankow")
	$(call copy_csv_and_pdf,2015,"reinickendorf","reinickendorf")
	$(call copy_csv_and_pdf,2015,"spandau","spandau")
	$(call copy_csv_and_pdf,2015,"steglitz-zehlendorf","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2015,"tempelhof-schoeneberg","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2015,"treptow-koepenick","treptow-koepenick")
	@cp ${SOURCE}/2015/standesamt-i.csv ${TARGET}/2015/standesamt_i.csv
	@echo "... restructure CSV"
	@. bin/convert2015.sh ${TARGET}/2015
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2015

2016:
	@echo "Prepare 2016 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2016
	@mkdir -p ${TARGET}/2016
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2016,"Charlottenburg-Wilmersdorf_Vornamen","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2016,"Friedrichshain-Kreuzberg_Vornamen","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2016,"Lichtenberg_Vornamen","lichtenberg")
	$(call copy_csv_and_pdf,2016,"Marzahn-Hellersdorf_Vornamen","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2016,"Vornamen_Mitte","mitte")
	$(call copy_csv_and_pdf,2016,"Neukoelln_Vornamen","neukoelln")
	$(call copy_csv_and_pdf,2016,"Pankow_Vornamen","pankow")
	$(call copy_csv_and_pdf,2016,"Reinickendorf_Vornamen","reinickendorf")
	$(call copy_csv_and_pdf,2016,"Spandau_Vornamen","spandau")
	$(call copy_csv_and_pdf,2016,"Steglitz-Zehlendorf_Vornamen","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2016,"Tempelhof-Schoeneberg_Vornamen","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2016,"Treptow-Koepenick_Vornamen","treptow-koepenick")
	@echo "... restructure CSV"
	@. bin/convert2015.sh ${TARGET}/2016
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2016

2017:
	@echo "Prepare 2017 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2017
	@mkdir -p ${TARGET}/2017
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2017,"Charlottenburg-Wilmersdorf\ Vornamen\ 2017","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2017,"Friedrichshain-Kreuzberg\ Vornamen\ 2017","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2017,"Lichtenberg\ Vornamen\ 2017","lichtenberg")
	$(call copy_csv_and_pdf,2017,"Marzahn-Hellersdorf\ Vornamen\ 2017","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2017,"Mitte\ Vornamen\ 2017","mitte")
	$(call copy_csv_and_pdf,2017,"Neukölln\ Vornamen\ 2017","neukoelln")
	$(call copy_csv_and_pdf,2017,"Pankow\ Vornamen\ 2017","pankow")
	$(call copy_csv_and_pdf,2017,"Reinickendorf\ Vornamen\ 2017","reinickendorf")
	$(call copy_csv_and_pdf,2017,"Spandau\ Vornamen\ 2017","spandau")
	$(call copy_csv_and_pdf,2017,"Steglitz-Zehlendorf\ Vornamen\ 2017","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2017,"Tempelhof-Schöneberg\ Vornamen\ 2017","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2017,"Treptow-Köpenick\ Vornamen\ 2017","treptow-koepenick")
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2017
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2017

2018:
	@echo "Prepare 2018 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2018
	@mkdir -p ${TARGET}/2018
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2018,"Charlottenburg-Wilmersdorf\ Vornamen\ 2018","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2018,"Friedrichshain-Kreuzberg\ Vornamen\ 2018","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2018,"Lichtenberg\ Vornamen\ 2018","lichtenberg")
	$(call copy_csv_and_pdf,2018,"Marzahn-Hellersdorf\ Vornamen\ 2018","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2018,"Mitte\ Vornamen\ 2018","mitte")
	$(call copy_csv_and_pdf,2018,"Neukölln\ Vornamen\ 2018","neukoelln")
	$(call copy_csv_and_pdf,2018,"Pankow\ Vornamen\ 2018","pankow")
	$(call copy_csv_and_pdf,2018,"Reinickendorf\ Vornamen\ 2018","reinickendorf")
	$(call copy_csv_and_pdf,2018,"Spandau\ Vornamen\ 2018","spandau")
	$(call copy_csv_and_pdf,2018,"Steglitz-Zehlendorf\ Vornamen\ 2018","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2018,"Tempelhof-Schöneberg\ Vornamen\ 2018","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2018,"Treptow-Köpenick\ Vornamen\ 2018","treptow-koepenick")
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2018
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2018

2019:
	@echo "Prepare 2019 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2019
	@mkdir -p ${TARGET}/2019
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2019,"Charlottenburg-Wilmersdorf\ von\ Berlin\ Vornamen\ 2019","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2019,"Friedrichshain-Kreuzberg\ von\ Berlin\ Vornamen\ 2019","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2019,"Lichtenberg\ von\ Berlin\ Vornamen\ 2019","lichtenberg")
	$(call copy_csv_and_pdf,2019,"Marzahn-Hellersdorf\ von\ Berlin\ Vornamen\ 2019","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2019,"Mitte\ von\ Berlin\ Vornamen\ 2019","mitte")
	$(call copy_csv_and_pdf,2019,"Neukölln\ von\ Berlin\ Vornamen\ 2019","neukoelln")
	$(call copy_csv_and_pdf,2019,"Pankow\ von\ Berlin\ Vornamen\ 2019","pankow")
	$(call copy_csv_and_pdf,2019,"Reinickendorf\ von\ Berlin\ Vornamen\ 2019","reinickendorf")
	$(call copy_csv_and_pdf,2019,"Spandau\ von\ Berlin\ Vornamen\ 2019","spandau")
	$(call copy_csv_and_pdf,2019,"Steglitz-Zehlendorf\ von\ Berlin\ Vornamen\ 2019","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2019,"Tempelhof-Schöneberg\ von\ Berlin\ Vornamen\ 2019","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2019,"Treptow-Köpenick\ von\ Berlin\ Vornamen\ 2019","treptow-koepenick")
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2019
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2019

2020:
	@echo "Prepare 2020 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2020
	@mkdir -p ${TARGET}/2020
	@echo "... copy and rename source files"
	$(call copy_csv_and_pdf,2020,"Charlottenburg-Wilmersdorf\ von\ Berlin\ Vornamen\ 2020","charlottenburg-wilmersdorf")
	$(call copy_csv_and_pdf,2020,"Friedrichshain-Kreuzberg\ von\ Berlin\ Vornamen\ 2020","friedrichshain-kreuzberg")
	$(call copy_csv_and_pdf,2020,"Lichtenberg\ von\ Berlin\ Vornamen\ 2020","lichtenberg")
	$(call copy_csv_and_pdf,2020,"Marzahn-Hellersdorf\ von\ Berlin\ Vornamen\ 2020","marzahn-hellersdorf")
	$(call copy_csv_and_pdf,2020,"Mitte\ von\ Berlin\ Vornamen\ 2020","mitte")
	$(call copy_csv_and_pdf,2020,"Neukölln\ von\ Berlin\ Vornamen\ 2020","neukoelln")
	$(call copy_csv_and_pdf,2020,"Pankow\ von\ Berlin\ Vornamen\ 2020","pankow")
	$(call copy_csv_and_pdf,2020,"Reinickendorf\ von\ Berlin\ Vornamen\ 2020","reinickendorf")
	$(call copy_csv_and_pdf,2020,"Spandau\ von\ Berlin\ Vornamen\ 2020","spandau")
	$(call copy_csv_and_pdf,2020,"Steglitz-Zehlendorf\ von\ Berlin\ Vornamen\ 2020","steglitz-zehlendorf")
	$(call copy_csv_and_pdf,2020,"Tempelhof-Schöneberg\ von\ Berlin\ Vornamen\ 2020","tempelhof-schoeneberg")
	$(call copy_csv_and_pdf,2020,"Treptow-Köpenick\ von\ Berlin\ Vornamen\ 2020","treptow-koepenick")
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2020
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2020

2021:
	@echo "Prepare 2021 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2021
	@mkdir -p ${TARGET}/2021
	@echo "... copy and rename source files"
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ C.-W..csv ${TARGET}/2021/charlottenburg-wilmersdorf.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ F.-K..csv ${TARGET}/2021/friedrichshain-kreuzberg.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ I\ in\ Berlin.csv ${TARGET}/2021/standesamt_i.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Libg.csv ${TARGET}/2021/lichtenberg.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ M.-H..csv ${TARGET}/2021/marzahn-hellersdorf.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Mitte.csv ${TARGET}/2021/mitte.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Nkn.csv ${TARGET}/2021/neukoelln.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Pankow.csv ${TARGET}/2021/pankow.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Rdf.csv ${TARGET}/2021/reinickendorf.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ S.-Z..csv ${TARGET}/2021/steglitz-zehlendorf.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ Spandau.csv ${TARGET}/2021/spandau.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ T.-K..csv ${TARGET}/2021/treptow-koepenick.csv
	@cp ${SOURCE}/2021/Vornamenstatistik\ 2021\ T.-S..csv ${TARGET}/2021/tempelhof-schoeneberg.csv
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ C.-W..pdf ${TARGET}/2021/charlottenburg-wilmersdorf.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ F.-K..pdf ${TARGET}/2021/friedrichshain-kreuzberg.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ I\ in\ Berlin.pdf ${TARGET}/2021/standesamt_i.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Libg.pdf ${TARGET}/2021/lichtenberg.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ M.-H..pdf ${TARGET}/2021/marzahn-hellersdorf.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Mitte.pdf ${TARGET}/2021/mitte.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Nkn.pdf ${TARGET}/2021/neukoelln.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Pankow.pdf ${TARGET}/2021/pankow.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Rdf.pdf ${TARGET}/2021/reinickendorf.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ S.-Z..pdf ${TARGET}/2021/steglitz-zehlendorf.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ Spandau.pdf ${TARGET}/2021/spandau.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ T.-K..pdf ${TARGET}/2021/treptow-koepenick.pdf
	@cp ${SOURCE}/2021/Vornamenstatistik_20210101_20211231\ T.-S..pdf ${TARGET}/2021/tempelhof-schoeneberg.pdf
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2021
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2021

2022:
	@echo "Prepare 2022 data" 
	@echo "... set up target folder"
	@rm -rf ${TARGET}/2022
	@mkdir -p ${TARGET}/2022
	@echo "... copy and rename source files"
	@cp ${SOURCE}/2022/C.-W.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/charlottenburg-wilmersdorf.csv
	@cp ${SOURCE}/2022/F.-K.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/friedrichshain-kreuzberg.csv
	@cp ${SOURCE}/2022/Libg\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/lichtenberg.csv
	@cp ${SOURCE}/2022/M.-H.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/marzahn-hellersdorf.csv
	@cp ${SOURCE}/2022/Mitte\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/mitte.csv
	@cp ${SOURCE}/2022/Neukölln\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/neukoelln.csv
	@cp ${SOURCE}/2022/Pankow\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/pankow.csv
	@cp ${SOURCE}/2022/Rdf\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/reinickendorf.csv
	@cp ${SOURCE}/2022/S.-Z.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/steglitz-zehlendorf.csv
	@cp ${SOURCE}/2022/Spandau\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/spandau.csv
	@cp ${SOURCE}/2022/T.-K.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/treptow-koepenick.csv
	@cp ${SOURCE}/2022/T.-S.\ Vornamenstatistik_2022-01-01_2022-12-31.csv ${TARGET}/2022/tempelhof-schoeneberg.csv
	@cp ${SOURCE}/2022/C.-W.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/charlottenburg-wilmersdorf.pdf
	@cp ${SOURCE}/2022/F.-K.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/friedrichshain-kreuzberg.pdf
	@cp ${SOURCE}/2022/Libg\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/lichtenberg.pdf
	@cp ${SOURCE}/2022/M.-H.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/marzahn-hellersdorf.pdf
	@cp ${SOURCE}/2022/Mitte\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/mitte.pdf
	@cp ${SOURCE}/2022/Neukölln\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/neukoelln.pdf
	@cp ${SOURCE}/2022/Pankow\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/pankow.pdf
	@cp ${SOURCE}/2022/Rdf\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/reinickendorf.pdf
	@cp ${SOURCE}/2022/S.-Z.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/steglitz-zehlendorf.pdf
	@cp ${SOURCE}/2022/Spandau\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/spandau.pdf
	@cp ${SOURCE}/2022/T.-K.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/treptow-koepenick.pdf
	@cp ${SOURCE}/2022/T.-S.\ Vornamenstatistik_2022-01-01_2022-12-31.pdf ${TARGET}/2022/tempelhof-schoeneberg.pdf
	@echo "... restructure CSV"
	@. bin/convert2017.sh ${TARGET}/2022
	@echo "... remove non-names"
	@. bin/remove_non_names.sh ${TARGET}/2022

create-2018:
	@echo "Create 2018 dataset"
	@. bin/create_dataset.sh 2018
	@echo
	@echo "... done"
	
create-2019:
	@echo "Create 2019 dataset"
	@. bin/create_dataset.sh 2019
	@echo
	@echo "... done"

create-2020:
	@echo "Create 2020 dataset"
	@. bin/create_dataset.sh 2020
	@echo
	@echo "... done"
