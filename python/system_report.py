#!/usr/bin/env python3

import os
import platform
import shutil
import socket
from datetime import datetime

print("Linux VPS System Report")
print("=" * 60)
print("Generated:", datetime.now().isoformat(timespec="seconds"))
print("Hostname:", socket.gethostname())
print("OS:", platform.platform())
print("Kernel:", platform.release())
print("CPU count:", os.cpu_count())

total, used, free = shutil.disk_usage("/")
print("Root disk total: %.2f GB" % (total / 1024**3))
print("Root disk used:  %.2f GB" % (used / 1024**3))
print("Root disk free:  %.2f GB" % (free / 1024**3))

if hasattr(os, "getloadavg"):
    print("Load average:", ", ".join(f"{v:.2f}" for v in os.getloadavg()))
