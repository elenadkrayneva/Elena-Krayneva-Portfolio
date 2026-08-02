# Upload instructions

Direct GitHub writing through the connected integration returned:

`403: Resource not accessible by integration`

The folder is therefore prepared for direct upload.

## Recommended replacement

Replace the current folder:

`08-Oblicuo-Social-Media-Strategy`

with:

`08-Oblicuo-Customer-Insights-Growth-Strategy`

Then replace the existing Oblicuo block in the repository root `README.md` with the contents of:

`ROOT_README_REPLACEMENT.md`

## Suggested commit message

`Reframe Oblicuo as customer insights and growth strategy consulting case`

## Command-line option

```bash
git clone https://github.com/elenadkrayneva/Elena-Krayneva-Portfolio.git
cd Elena-Krayneva-Portfolio

rm -rf 08-Oblicuo-Social-Media-Strategy
cp -R /path/to/08-Oblicuo-Customer-Insights-Growth-Strategy .

# Edit the root README using ROOT_README_REPLACEMENT.md
git add .
git commit -m "Reframe Oblicuo as customer insights and growth strategy consulting case"
git push origin main
```
