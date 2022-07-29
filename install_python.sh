tar zxvf $1/python_prerequisites.tgz -C ./
cd py3
rpm -ivh ./*.rpm --nodeps --force
mkdir /usr/local/python3
tar zxvf $1/Python-3.7.9.tgz -C /usr/local/python3
cd /usr/local/python3/Python-3.7.9/
./configure --prefix=/usr/local/python3 --enable-optimizations
make
make altinstall
ln -s /usr/local/python3/bin/python3.7 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3.7 /usr/bin/pip3
