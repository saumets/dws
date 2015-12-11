********************
Docker Web Scaffolds
********************

A collection of `Docker`_ Web Scaffolds to help get you up and running quickly using a *containerized* local dev environment while developing on Mac OS X. Goodbye bloated laptop littered with frameworks, software, and tools which we've used once but forgot to uninstall! :) It's also kind of cool that we can guarantee our local dev environment maps **EXACTLY** to the environments of our colleagues and friends developing with us. *"But, it works on my machine?!"* 

These scaffolds are dependent on you being comfortable with the following tools:

- `Docker Machine`_
- `Docker Compose`_
- `Docker`_

**Assumptions:** You're comfortable working in the CLI. You have all of the above tools already installed and running correctly. I use `Homebrew`_ as my package manager of choice to get everything installed. You'll also need a VM application installed to build your virtual machines. I use `VirtualBox`_ because...FREE! Docker containers run on Linux and cannot run natively on Mac OS X. Hence the necessity for a virtual machine. *Remember* that in any documentation you may read with regards to Docker, the HOST is always your VM on OS X and **NOT** your local machine. 

Available Scaffolds
###################

Below is a listing of all available *dockerized* web scaffolds. Bear in mind that these scaffolds are specifically tailored to my own processes. 

node_sails
**********
`Sails`_, `Node`_, `Angular`_, `Postgres`_. I'm calling it the SNAP stack although I'm sure it's already been coined.

lamp_drupal7
*****************
A standard LAMP stack using the `PHP`_ docker base image to build containers capable of running a standard Drupal 7 deployment. **NOTE**: This scaffold currently assumes you clone an existing drupal build into the source folder:

.. code:: bash

  git clone <your_amazing_drupal_repo> src/

Basically clone your existing Drupal 7 site / repository into the local ./src folder. I'll tweak it into a default startup from scratch scaffold when time permits. 

**NOTE**: You'll notice after cloning that I have a process where my web root folder is */var/www/html/docroot*. You'll further notice this if you examine the */cnt/apache/sites-enabled/* folder. Tweak as you wish!

**COMING SOON**: *Wordpress* scaffold coming shortly.
  
.. _Docker: https://www.docker.com/what-docker
.. _Docker Compose: https://docs.docker.com/compose/
.. _Docker Machine: https://docs.docker.com/machine/
.. _Homebrew: http://brew.sh/
.. _VirtualBox: https://www.virtualbox.org/
.. _Sails: http://sailsjs.org/
.. _Node: https://nodejs.org/
.. _Angular: https://angularjs.org/
.. _Postgres: http://www.postgresql.org/
.. _PHP: https://hub.docker.com/_/php/
