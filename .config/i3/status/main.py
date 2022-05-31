import time
import socket

def get_ip():

    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    try:
        s.connect(("8.8.8.8", 80))
        return (s.getsockname()[0])
    except:
        return ("Internet not connected.")


def get_time():
    t = time.ctime(time.time())
    return (t)

while True:
    print(f' { get_ip() }  { get_time() }')
    time.sleep(1)

