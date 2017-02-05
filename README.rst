=====================================
Docking a Thinkpad T430 on Arch Linux
=====================================

The necessary files to automatically set up dual monitors when docking my Thinkpad T430. This was
specifically made for my environment and is here for reference.

Installation
------------
.. code-block:: bash

    # pacman -S acpid
    # cp monitor.sh /usr/local/bin/
    # cp docking.service /etc/systemd/system/
    # cp 100-kipling.rules /etc/udev/rules.d/
    # cp lid /etc/acpi/events/
    # systemctl daemon-reload
    # systemctl restart acpid systemd-udevd

License
-------
Copyright © 2017 `Matt Deacalion Stevens`_, released under The `MIT License`_.

.. _Matt Deacalion Stevens: http://dirtymonkey.co.uk
.. _MIT License: http://deacalion.mit-license.org
