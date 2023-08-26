import time
from datetime import datetime

starttime = time.time()
while True:
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")
    print(current_time + " - Hello World!")
    # Remove the Time taken by code to execute
    time.sleep(1.0 - ((time.time() - starttime) % 1.0))
