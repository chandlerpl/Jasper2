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
echo '
                                                                                                                                                           '
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get install nano git-core python-dev bison libasound2-dev libportaudio-dev python-pyaudio --yes
sudo apt-get remove python-pip
sudo easy_install pip
sudo pip3 install --upgrade pocketsphinx SpeechRecognition datetime speedtest-cli requests pytz