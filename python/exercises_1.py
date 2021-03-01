from cv2 import cv2


def converterImg(chosen: int, img):
    cvt = 1

    if chosen == 1:
        cvt = cv2.cvtColor(img,  cv2.COLOR_BGR2XYZ)
    elif chosen == 2:
        cvt = cv2.cvtColor(img, cv2.COLOR_BGR2YUV)
    elif chosen == 3:
        cvt = cv2.cvtColor(img, cv2.COLOR_BGRA2GRAY)
    elif chosen == 4:
        cvt = cv2.cvtColor(img, cv2.COLOR_BGRA2RGB)
    elif chosen == 5:
        cvt = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    elif chosen == 6:
        cvt = cv2.cvtColor(img, cv2.COLOR_BGR2Lab)
    elif chosen == 9:
        exit()
    else:
        cvt = img

    return cvt


print('Informe o endereço da imagem:')
imgAddress = input()

# img = cv2.imread("/Users/rodrigo/Pictures/missao.jpg")
img = cv2.imread(imgAddress)

cv2.waitKey(20)

cv2.imshow("Original", img)


while True:
    print("1: XYZ\n"
          "2: YUV\n"
          "3: Gray\n"
          "4: RGB\n"
          "5: HSV\n"
          "6: Lab\n"
          "9: Sair\n"
          "\n")

    print('selecione uma opção')
    chosen = input()

    gray = converterImg(int(chosen), img)

    cv2.imshow("Converted", gray)

    cv2.waitKey(1)

    if(chosen == 9):
        break
