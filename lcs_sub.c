#include <stdio.h>
#include <string.h>

#define max(a,b) ((a) > (b) ? (a) : (b))

int match (char a, char b) {
    return (a==b)||(a=='*')||(b=='*');}

int main() {
    char X[] = "CG*TA";
    char Y[] = "GTTCC*A";
    
    int m = strlen(X);
    int n = strlen(Y);

    int dp[100][100]={0};

    for (int i=1; i <= m; i++){
        for(int j=1; j <= n; j++){
            if(match(X[i-1], Y[j-1])){
                dp[j][i] = dp[j-1][i-1] + 1;}
            else{
                dp[j][i] = max(dp[j-1][i], dp[j][i-1]);}
        }
    }

    printf("DP Table:\n");
    printf("\t@\t");
    for(int i=0; i<m; i++){
        printf("%c\t", X[i]);}
    printf("\n");
    for(int j=0; j<=n; j++){
        for(int i=0; i<=m; i++){
            if (i==0){
                if(j){
                    printf("%c\t",Y[j-1]);}
                else{
                    printf("@\t"); }
            }
            printf("%d\t", dp[j][i]);
        }
        printf("\n");
    }
    char lcs[100];
    int idx = dp[n][m];
    lcs[idx] = '\0';
    int i = m, j = n;
    while (i > 0 && j > 0){
        if(match(X[i- 1], Y[j-1])){
            if(X[i-1] == '*'){
                lcs[--idx] = Y[j-1];}
            else{
                lcs[--idx] = X[i-1];}
            i--;
            j--;
        } else if(dp[j][i-1] >dp[j-1][i]){
            i--;}
        else{
            j--;
        }
    }
    printf("M: %d, N: %d, LCS Length: %d\n", m,n,dp[n][m]);
    printf("LCS: %s\n", lcs);

    return 0;
}