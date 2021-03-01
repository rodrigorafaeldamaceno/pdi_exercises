#include <opencv2/opencv.hpp>
#include <vector>

using namespace cv;
using namespace std;

Mat converterImg(int chosen, Mat img)
{
  Mat cvt;
  switch (chosen)
  {
  case 1:
    cvtColor(img, cvt, COLOR_BGR2XYZ);
    break;
  case 2:
    cvtColor(img, cvt, COLOR_BGR2YUV);
    break;
  case 3:
    cvtColor(img, cvt, COLOR_BGRA2GRAY);
    break;
  case 4:
    cvtColor(img, cvt, COLOR_BGRA2RGB);
    break;
  case 5:
    cvtColor(img, cvt, COLOR_BGR2HSV);
    break;
  case 6:
    cvtColor(img, cvt, COLOR_BGR2Lab);
    break;
  default:
    cvt = img;
    break;
  }
  return cvt;
}

int main()
{
  Mat originalImage, convertedImage;
  char imageAddress[255];
  int chosen;

  cout << "Informe o endereço da imagem: ";
  cin >> imageAddress;

  // originalImage = imread(imageAddress);
  originalImage = imread("/Users/rodrigo/Pictures/missao.jpg");

  namedWindow("Original", WINDOW_NORMAL);
  imshow("Original", originalImage);

  waitKey(1);
  int cont = 0;
  do
  {
    cout << "1: XYZ\n"
            "2: YUV\n"
            "3: Gray\n"
            "4: RGB\n"
            "5: HSV\n"
            "6: Lab\n"
            "9: Sair\n"
            "\n"
         << endl;

    cout << "Escolha uma opção: " << endl;
    cin >> chosen;

    convertedImage = converterImg(chosen, originalImage);

    stringstream ss;
    ss << cont;
    string converted = "converted" + ss.str();

    imshow("Converted", convertedImage);
    // imshow(converted, convertedImage);
    waitKey(1);
    cont++;
  } while (chosen != 9);

  return 0;
}