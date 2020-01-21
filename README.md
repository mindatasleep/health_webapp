# SmoothPeaks webapp

A containerized web application to study data and automate reporting.

Consists of the following modules:
- Data warehousing (TBD)
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

## Manage Docker containers

```
# Example
docker build -t pythonimage .
docker run pythonimage

# Analysis module
docker build -t interested_hofstadter_image analysis
docker run --name interested_hofstadter --rm -it -v $PWD/tmp:/app/src/plots interested_hofstadter_image:latest

# Mount volumes from CLI	
docker run --name=nginx --rm -d -v $PWD/nginxlogs_del:/var/log/nginx -p 5000:80 nginx
docker exec -i pythonimage bash 
docker run --name interested_hofstadter --rm -it -v $PWD/tmp:/app/src/plots interested_hofstadter_image:latest

# Flask
docker run --rm -i -p 5000:5000 pythonflaskdemo:latest

# Rails
(https://zegetech.com/blog/2019/02/14/rails-on-docker.html)
docker-compose run --rm --service-ports app bash. 
docker-compose\'a0run [options] name_of_service [command to run]

docker-compose build
docker-compose run web rake db:create db:migrate
docker-compose up
docker-compose exec web rails console

docker-compose exec app rails db:create
# or if the container was not yet started
docker-compose run app rails db:create

# Remove stopped containers
docker rm -v $(sudo docker ps -aq -f status=exited)

```


## Run top-level docker-compose

```
docker-container up --build
# On a different terminal
docker-compose run web rake db:create
docker-compose run web rake db:migrate RAILS_ENV=development

```