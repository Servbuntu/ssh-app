import os
print("Current SSH Port: ")
os.system("zsh /serv/pkgs/ssh/port.sh")
newport = input("New Port for SSH(d): ")
os.system("""sudo bash /serv/pkgs/ssh/change-port.sh """ + newport)
