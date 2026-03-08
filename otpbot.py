import pyotp

# 등록할 때 받은 시크릿 키 (공백 제거 상태)
secret = 'LZXUUUTX...' 
totp = pyotp.TOTP(secret)

# 현재 시간 기준 6자리 번호 생성
print(totp.now())