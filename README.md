# soft2020fall-si

This repo supplements the course [System Integration](https://datsoftlyngby.github.io/soft2020fall/SI) at CPHbusiness in fall 2020.<br>


This is our solution to assignment 2. 

Steps to setup project:
- Add database from path in intelliJ, link to the bank.mv.db file. 
- In **StartFileClient**, add filepath to the populate.json file in program arguments for the run configuration
- In **BankImplementation**, change the url to your own database URL  (on line 24)


Run DbServerApplication, RMIRegistry before running either StartFileClient for RPC/RMI transfer, or RMIClientDB to check size of database.
