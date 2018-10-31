# blogs-client


### What is the blogs client


blogs-client is the client of blogs，which as the user interface.
And fork by [StrayCatAN/discuzD](https://github.com/StrayCatAN/discuzD.git) , based on docker deployment.
    

### Config 

The config of blogs client is made up of  [config/index.js](https://github.com/zhousi666/discuzD/blob/master/config/index.js) and [docker-compose.yml](https://github.com/zhousi666/blogs-client/blob/master/docker-compose.yml).

### Dependencies


- install docker

- install node.js

- npm


### Installation




	// get code
	git clone https://github.com/zhousi666/blogs-client.git
	
	// start blogs client
	cd blogs-client
	sudo docker-compose -f docker-compose.yml up -d 
	or : sudo docker-compose -f docker-compose.yml up

