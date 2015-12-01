echo "i am starting launch script"
for f in setup_dns.py create_cert.sh setup_devbox.py init.sh deploy_bosh.sh 98-msft-love-cf
do
   wget $1/$f -O $f
done

\cp * ../../
cd ../../
python setup_devbox.py


echo "end of launch script"
echo "starting bosh deployment"
#!/bin/sh

export BOSH_INIT_LOG_LEVEL='Debug'
export BOSH_INIT_LOG_PATH='./run.log'
bosh-init deploy bosh.yml
