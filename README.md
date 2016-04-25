# crusaider/baseimage-node
Docker image based on phusion/baseimage-docker adding the node js runtime without the full blown phusion passenger.

## Why Use This Image
To utilize the befinits of [phusion/baseimage-docker](https://github.com/phusion/baseimage-docker) when building a container to run a node js application but not have to use one of the phusion passanger images.

## How To Use
1. Base your image on this using the `FROM`statement in your dockerfile.
1. Add your application code and (resolve any dependencies using `NPM`).
1. Add one or more service scripts in `/etc/service/*`
1. `EXPOSE` any ports needed.

That's it - now you can run your node js application in a docker container. There is a sample applicaiton in the repo on the [sample folder](https://github.com/crusaider/baseimage-node/sample) that shows how it can be used.

## Source
[Source Repository](https://github.com/crusaider/baseimage-node)

[DockerHub](https://hub.docker.com/r/crusaider/baseimage-node/)

## License

The MIT License (MIT)

Copyright (c) 2016 Jonas Andreasson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.