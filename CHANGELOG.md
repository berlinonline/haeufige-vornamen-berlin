# Changelog

## Development

## [1.2.0](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.2.0)

_(2023-09-07)_

- Add "(Eigenname)", "(Großvatersname)", "(Mittelname)", "(Vatersname)", "-", "'evič" to list of non-name strings (thanks [@traut21](https://github.com/traut21)).
- Re-implement `remove_non_names` script in Python, call Python script from old shell script.
- Remove commas from "Leo,", "Linda-Marlice,", "Max,".
- Add make target to generate list of all names.
- Add script to generate list of top names for each district for a given year.
- Discuss the case of one-letter-names in README.md.

## [1.1.11](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.11)

_(2023-01-16)_

- Add 2022 data and make targets, adjust README.
- Add "der", "del", "wegen", "Vornamen!" to list of non-name strings.

## [1.1.10](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.10)

_(2022-04-27)_

- Add some information on "Standesamt I", thanks [@DerTee](https://github.com/DerTee)!

## [1.1.9](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.9)

_(2022-01-11)_

- Add 2021 data and make targets.
- Update README etc.

## [1.1.8](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.8)

_(2022-01-07)_

- Add 2019 and 2020 to the `clean-data` make target.

## [1.1.7](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.7)

_(2022-01-07)_

- Add "von", "van", "zur" to list of non-name strings.
- Add missing Standesamt I file for 2015 to repo.

## [1.1.6](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.6)

_(2022-01-04)_

- Add "Standesamt I" files to Makefile, lest they are deleted when running `clean-data`.
- Make "Standesamt I" filenames consistent (`standesamt_i.csv`).
- Two changes from [@mi01](https://github.com/mi01):
    - Add "und" and "ohne" to the list of non-name strings to be filtered out.
    - Fix encoding of umlauts filenames in Makefile that would cause problems on some platforms (see https://github.com/berlinonline/haeufige-vornamen-berlin/pull/5#issuecomment-1004886543).
- Update changelog with dates and links to release tags. 

## [1.1.5](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.5)

_(2021-01-12)_

- Add 2020 data and make targets.
- Update README etc.
- Add repository logo.

## [1.1.4](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.4)

_(2020-04-14)_

- Add "Familienname" to the list of non-names (which showed up as a name in Spandau 2017). Thanks to [@graste](https://github.com/graste) and [@xilefluap](https://github.com/xilefluap)!

## [1.1.3](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.3)

_(2020-01-13)_

- Add 2019 data and make targets.
- Update README (with reference to 2019 dataset).

## [1.1.2](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.2)

_(2019-01-18)_

- Adjust README.

## [1.1.1](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.1)

_(2019-01-18)_

- Filter out empty names, e.g. `;1;w;2`.

## [1.1.0](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.1.0)

_(2019-01-18)_

- Switched CSV column separator from `;` to `,`.

## [1.0.0](https://github.com/berlinonline/haeufige-vornamen-berlin/releases/tag/1.0.0)

_(2019-01-18)_

- Initial republication of data from 2012-2018 on github.