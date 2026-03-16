# Koristimo malu Linux bazu sa gcc kompajlerom
FROM gcc:latest

# Kreiramo radni direktorijum u kontejneru
WORKDIR /app

# Kopiramo main.c u kontejner
COPY main.c .

# Kompajliramo C program
RUN gcc -o myprogram main.c

# Komanda koja se izvršava kad se kontejner startuje
CMD ["./myprogram"]
# Koristimo gcc baznu sliku
FROM gcc:latest

# Kreiramo radni direktorijum
WORKDIR /app

# Kopiramo main.c
COPY main.c .

# Kompajliramo program u izvršni fajl myprogram
RUN gcc -o myprogram main.c

# Kada kontejner startuje, pokreće program
CMD ["./myprogram"]
