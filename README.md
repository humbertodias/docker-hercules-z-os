# docker-hercules-z/os

Hercules Mainframe Emulator Running The MVS 3.8j Tur(n)key 4- System

### Server

```
make build run-tk4
```

### Client

```
make run-x3270
```

### Users

* HERC01 is a fully authorized user with full access to the RAKF users and profiles tables. The logon password is CUL8TR.

* HERC02 is a fully authorized user without access to the RAKF users and profiles tables. The logon password is CUL8TR.

* HERC03 is a regular user. The logon password is PASS4U.

* HERC04 is a regular user. The logon password is PASS4U.

* IBMUSER is a fully authorized user without access to the RAKF users and profiles tables. The logon password is IBMPASS. This account is meant to be used for recovery purposes only.

### PFKEYS

F3 - Exit
F7 - Page Back
F8 - Page Forward

### Documentation

Brief documentation is included in /opt/hercules/tk4/doc Also found at [MVS_TK4-_v1.00_Users_Manual.pdf](http://wotho.ethz.ch/tk4-/MVS_TK4-_v1.00_Users_Manual.pdf)


### Ref

* [IBM MVS - Editing, compiling and executing a Cobol program](https://www.youtube.com/watch?v=YA3FQOzr0ag)
* [Hello world - Cobol](https://youtu.be/exAp0Ddbi-c)

