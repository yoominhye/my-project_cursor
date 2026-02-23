#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void process_data(char *buf) {
    if (buf[0] == 'B' && buf[1] == 'O' && buf[2] == 'O' && buf[3] == 'M') {
        printf("💥 Crash point reached (Coverage Test)!\n");
        // gcov 데이터 기록을 위해 정상 종료
        exit(0);
    }
}

int main() {
    char buf[100];
    memset(buf, 0, sizeof(buf));
    if (read(0, buf, sizeof(buf) - 1) > 0) {
        process_data(buf);
    }
    return 0;}
