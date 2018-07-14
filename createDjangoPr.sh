sudo apt install python3
sudo apt install nginx
sudo apt install python3-setuptools
sudo apt install python3-pip
sudo pip3 install virtualenv
mkdir ~/HelloDjango
cd ~/HelloDjango
virtualenv venv
source venv/bin/activate
pip install django
pip install gunicorn
#Надо добавить конфигурацию единорожка
#sudo nano /etc/systemd/system/gunicorn.service
#sudo systemctl start gunicorn
#sudo systemctl systemctl enable gunicorn
#
django-admin.py startproject myproject ~/HelloDjango
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic
python3 manage.py createsuperuser
#Надо добавить конфигурацию nginx'a
sudo nginx -s reload
gunicorn myproject.wsgi:application -D
