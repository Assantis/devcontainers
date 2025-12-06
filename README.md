# Devcontainers

After spending a lot of time with different hardware compatability problems in various Linux distros,
I finally had enough. I needed a setup that I can replicate fast and reliable.
I started using them for work and I fell in love with it.
But I despised the additional json syntax from the microsoft dev-containers.
The funny thing is: You don't need this VS-Code allows you to connect to any container.

After that I was informed: "Hey I see more and more devcontainers in open source projects"
So I decided to share my approach, and build more general version that I use as a template,
to build the dedicated containers for my projects.

In my case I mostly use ubuntu images, but of course the pinciple applies to a lot of other containers
that are your favorites or that already contain most things that you need for your setup.

# 1. What you need to install

```
github
docker
vs-code
```

# 2. How to run it

Configure the docker-compose file to mount the correct directory you want to use.
Provide your git config to the container to enable working with your git repo.

```
docker compose build
docker compose up -d
```

Then just open the vs code command palette execute: 
Dev Containers: Attach to Running Container...