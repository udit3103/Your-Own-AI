FROM gcc:14

WORKDIR /app
COPY main.cpp httplib.h index.html ./
RUN g++ -std=c++17 -O2 -pthread main.cpp -o vectordb

EXPOSE 8080
CMD ["./vectordb"]