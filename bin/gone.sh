/mnt-system/local/pomodoro/go/gone -e "zenity --warning --text=Pomodoro-working-session"
#/mnt-system/local/pomodoro/go/gone -w 25 -l 30 -s 5 -e "zenity --warning --text=hecho"
#/mnt-system/local/pomodoro/go/gone -w 1 -l 1 -s 1 -e "zenity --warning --text=Pomodoro-working-session"

#   Usage
#   
#   Run gone and Use q to quit, p to pause.
#   
#   Usage of ./bin/gone:
#     -debug
#           Debug option for development purpose
#     -e string
#           The command to execute when a session is done
#     -l int
#           Duration of a long break (default 15)
#     -m string
#           Select the color mode (default "dark")
#     -p string
#           Pattern to  follow (for example wswswl) (default "wswswl")
#     -s int
#           Duration of a short break (default 5)
#     -w int
#           Duration of a working session (default 25)
#   Example
#   
#   ./gone -w 25 -l 30 -s 5 -e "say done"
