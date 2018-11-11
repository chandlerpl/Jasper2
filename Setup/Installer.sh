echo -e '\033[0;36m'
echo '                                                                                                                                                           '
echo '          JJJJJJJJJJJ                    AAA                    RRRRRRRRRRRRRRRRR        VVVVVVVV           VVVVVVVV     IIIIIIIIII        SSSSSSSSSSSSSSS '
echo '          J:::::::::J                   A:::A                   R::::::::::::::::R       V::::::V           V::::::V     I::::::::I      SS:::::::::::::::S'
echo '          J:::::::::J                  A:::::A                  R::::::RRRRRR:::::R      V::::::V           V::::::V     I::::::::I     S:::::SSSSSS::::::S'
echo '          JJ:::::::JJ                 A:::::::A                 RR:::::R     R:::::R     V::::::V           V::::::V     II::::::II     S:::::S     SSSSSSS'
echo '            J:::::J                  A:::::::::A                  R::::R     R:::::R      V:::::V           V:::::V        I::::I       S:::::S            '
echo '            J:::::J                 A:::::A:::::A                 R::::R     R:::::R       V:::::V         V:::::V         I::::I       S:::::S            '
echo '            J:::::J                A:::::A A:::::A                R::::RRRRRR:::::R         V:::::V       V:::::V          I::::I        S::::SSSS         '
echo '            J:::::j               A:::::A   A:::::A               R:::::::::::::RR           V:::::V     V:::::V           I::::I         SS::::::SSSSS    '
echo '            J:::::J              A:::::A     A:::::A              R::::RRRRRR:::::R           V:::::V   V:::::V            I::::I           SSS::::::::SS  '
echo 'JJJJJJJ     J:::::J             A:::::AAAAAAAAA:::::A             R::::R     R:::::R           V:::::V V:::::V             I::::I              SSSSSS::::S '
echo 'J:::::J     J:::::J            A:::::::::::::::::::::A            R::::R     R:::::R            V:::::V:::::V              I::::I                   S:::::S'
echo 'J::::::J   J::::::J           A:::::AAAAAAAAAAAAA:::::A           R::::R     R:::::R             V:::::::::V               I::::I                   S:::::S'
echo 'J:::::::JJJ:::::::J          A:::::A             A:::::A        RR:::::R     R:::::R              V:::::::V              II::::::II     SSSSSSS     S:::::S'
echo ' JJ:::::::::::::JJ          A:::::A               A:::::A       R::::::R     R:::::R               V:::::V               I::::::::I     S::::::SSSSSS:::::S'
echo '   JJ:::::::::JJ           A:::::A                 A:::::A      R::::::R     R:::::R                V:::V                I::::::::I     S:::::::::::::::SS '
echo '     JJJJJJJJJ            AAAAAAA                   AAAAAAA     RRRRRRRR     RRRRRRR                 VVV                 IIIIIIIIII      SSSSSSSSSSSSSSS   '
echo '                                                                                                                                                           '
echo -e '\033[0m'
sudo apt-get update -qq -o=Dpkg::Use-Pty=0
sudo apt-get upgrade  -qq -o=Dpkg::Use-Pty=0
sudo apt-get install swig  -qq -o=Dpkg::Use-Pty=0
sudo apt-get install nano git-core python-dev bison libasound2-dev libportaudio-dev python-pyaudio  -qq -o=Dpkg::Use-Pty=0
sudo apt-get remove python-pip -qq -o=Dpkg::Use-Pty=0
sudo easy_install pip
sudo pip3 install --upgrade pocketsphinx datetime speedtest-cli requests pytz -q