# python-service
Sample app illustrating how to run a python script as a service.

1. Clone the python-service repo.
``sudo git clone https://github.com/highhair20/python-service.git /opt/glolabs/python-service``

2. Install the application as a service

    ``sudo bash /opt/glolabs/python-service/scripts/install.sh``
3. Verify that the service is running<br />
``systemctl list-unit-files | grep helloworld``
4. See the output of the service<br />
    ``sudo tail -F /var/log/messages``
5. ``reboot``
6. See the output of the service<br />
    ``sudo tail -F /var/log/messages``