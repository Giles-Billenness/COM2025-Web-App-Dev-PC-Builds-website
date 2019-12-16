# README

This is a ruby on rails website for modelling pc builds (Pc component lists).
I have used HAML, JavaScript, Jquery and many more technologies in this project.
The component tables are populated with seeds, however the build table is populated manually.
The admin account can see the component drop down menu and can edit/destroy any builds while only the user that created the build can usually only do this.

When loading the builds page, wait for it to fully load! Otherwise the Jquery showing the components on mousehover wont work correctly!

To run: open terminal in the main dir (on machines that can run rails), execute "rails s" and navigate to "localhost:3000".

This project is hosted on https://github.com/Giles-Billenness/COM2025

There are two accounts currently signed up:

* Admin: admin@builds.com, password: password

* User: test@email.com, password: password
