import time
from datetime import datetime

starttime = time.time()
while True:
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")

    file = open("/var/log/messages", "a")  
    file.write(current_time + " - Hello World! \n")
    file.close()

    # Remove the Time taken by code to execute
    time.sleep(10.0 - ((time.time() - starttime) % 10.0))
