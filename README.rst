********************
Docker Web Scaffolds
********************

A collection of `Docker`_ Web Scaffolds to help get you up and running quickly using a *containerized* local dev environment while developing on Mac OS X. Goodbye bloated laptop littered with frameworks, software, and tools which I used once but forgot to uninstall! :) It's also kind of cool that we can guarantee our local dev environment maps **EXACTLY** to the environments of our colleagues/friends helping us. *"But, it works on my machine?!"* 

These scaffolds are dependent on you being comfortable with the following tools:

- `Docker Machine`_
- `Docker Compose`_
- `Docker`_

**Assumptions:** You're comfortable working in the CLI. You have all of the above tools already installed and running correctly. I use `Homebrew`_ as my package manager of choice to get everything installed. You'll also need a VM application installed to build your virtual machines. I use `VirtualBox`_ because...FREE! Docker containers run on Linux and cannot run natively on Mac OS X. Hence the necessity for a virtual machine. *Remember* that in any documentation you may read with regards to Docker, the HOST is always your VM on OS X and **NOT** your local machine. 

Available Scaffolds
###################

Below is a listing of all available *dockerized* web scaffolds. Bear in mind thatthese scaffolds are specifically tailored to my own processes. 

Snap
*****
`Sails`_, `Node`_, `Angular`_, `Postgres`_. I'm calling it the SNAP stack although I'm sure it's already been coined.

**COMING SOON**: I have scaffolds available for Wordpress and Drupal but they need some additional tweaking and cleanup before I make them available here. *Wordpress* and *Drupal* scaffolds are coming shortly. I just need some time to clean them up a little. 
  
.. _Docker: https://www.docker.com/what-docker
.. _Docker Compose: https://docs.docker.com/compose/
.. _Docker Machine: https://docs.docker.com/machine/
.. _Homebrew: http://brew.sh/
.. _VirtualBox: https://www.virtualbox.org/
.. _Sails: http://sailsjs.org/
.. _Node: https://nodejs.org/
.. _Angular: https://angularjs.org/
.. _Postgres: http://www.postgresql.org/
