#!/bin/bash
/bin/bash --login;
rvm use 2.3.0;
echo "after rvm use ruby";
rvm gemset use blogPort;