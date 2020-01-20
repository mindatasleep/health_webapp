# SmoothPeaks webapp

A containerized web application to study data and automate reporting.

Consists of the following modules:
- Data warehousing (?)
- Data onboarding with API (Flask)
- Data analysis and visualization (Python)
- Web application and reporting (Ruby on Rails)


## Import data

```
python3 -m analysis.src.data_import analysis/src/data/
```

## Run PCA study

```
python3 -m analysis.src.studies.iris analysis/src/data/ analysis/src/plots/plot1.png

```

## Run analysis with docker-compose
```
docker run --rm -dit --name interested_hofstadter -v ${PWD}:/tmp pythonanalysis:latest
```





```

docker build -t pythonanalysis analysis
docker run --rm -dit --name interested_hofstadter pythonanalysis:latest


```


