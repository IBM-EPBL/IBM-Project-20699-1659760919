import os
import smtplib
import imghdr
from email.message import EmailMessage

import yfinance as yf
import datetime as dt
import pandas as pd
from pandas_datareader import data as pdr

# your email and your password
# to send Alert mail to other email accounts
EMAIL_ADDRESS="XYZ@gmail.com"
EMAIL_PASSWORD="XYZ123"

msg=EmailMessage()

yf.pdr_override()
start=dt.datetime(2022,11,11)
now =dt.datetime.now()

stock="BTC-USD"
TargetPrice=33000

msg["Subject"]="Alert on"+stock
msg["From"]=EMAIL_ADDRESS
msg["To"]="vowoke3141@rerunway.com"

alerted=False

while 1:
    df=pdr.get_data_yahoo(stock, start, now)
    currentClose=df["Adj Close"][-1]
    print(currentClose)

    condition=currentClose>TargetPrice

    if(condition and alerted==False):
        alerted=True
        message= stock +"Has activated the alert price of "+ str(TargetPrice) +\
            "\nCurrent Price: "+str(currentClose)
        
        msg.set_content(message)
        
        with smtplib.SMTP_SSL('smtp.gmail.com',465) as smtp:
            smtp.login(EMAIL_ADDRESS,EMAIL_PASSWORD)
            smtp.send_message(msg)

            print("Completed")
    else:
        print(" no new Alerts")