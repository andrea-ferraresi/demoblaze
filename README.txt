
STEP BY STEP TUTORIAL to execute the automated test case

   In this local folder where the README and the Gemfile is, please run
   
   bundle install
   rspec user_acceptance_tests/*


WHAT YOU NEED TO INSTALL to execute the automated test case

   You need to 
   1) Install rvm (ruby version manager), ruby and rails
   2) Install geckodriver (because the test is configured to run on Firefox at the moment)
   3) Install bundler



   I'm providing an overview of the necessary steps to perform these installations which works for Ubuntu version 20.04



        1) Install rvm (ruby version manager), ruby and rails


        I suggest this source https://rvm.io/rvm/install, basically you need to lauch

        \curl -sSL https://get.rvm.io | bash -s stable --rails

        (it is however necessary to install GPG keys used to verify installation package)


        2) download https://github.com/mozilla/geckodriver/releases 

        and add the folder where geckodriver is stored in the environment variable PATH

        3) Install bundler
     
        Run the command
       
         sudo apt-get install bundler







IDE

   snap install sublime-text