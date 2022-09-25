#python Zum 실시간 검색어 크롤링 시도

from contextlib import nullcontext
from queue import Empty
from bs4 import BeautifulSoup
from urllib.request import urlopen
with urlopen('https://search.zum.com/search.zum?method=uni&option=accu&rd=1&query=%EC%9D%B4%EC%8A%88%EA%B2%80%EC%83%89%EC%96%B4&qm=f_typing.top') as response:
    soup = BeautifulSoup(response, 'html.parser')
    ex = Empty
    num = 1
    list_title = list()

    for anchor in soup.select("span.txt"):
        if(ex!=anchor):
            print(anchor.get_text())
        ex = anchor
        num = num+1
        if(num == 10):
            break

    for x in soup.select("#issue_wrap > ul:nth-child(1) > li:nth-child(1) > div > a:nth-child(1)"):
        if(ex!=anchor):
            print(anchor)
        ex = anchor
        num = num+1
        if(num == 10):
            break