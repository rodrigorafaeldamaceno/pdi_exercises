#include <iostream>
#include <opencv2/opencv.hpp>

// #ifdef _WIN32
// #define CLEAR system("cls")
// #else
// #define CLEAR system("clear")
// #endif
using namespace cv;
using namespace std;

Scalar textColor = Scalar(255, 0, 0);

void funcaoCor(int iValor, void *userData)
{
  Mat *src = (Mat *)userData;
  switch (iValor)
  {
  case 0:
    textColor = Scalar(255, 0, 0);
    break;
  case 1:
    textColor = Scalar(0, 255, 0);

    break;
  case 2:
    textColor = Scalar(0, 0, 255);

    break;
  case 3:
    textColor = Scalar(0, 0, 0);

    break;
  }
  imshow("Original", *src);
}

void funcaoMouse(int event, int x, int y, int flags, void *userdata)
{
  Mat *aux = (Mat *)userdata;
  stringstream text;
  text << "(" << x << ", " << y << ")";
  rectangle(*aux, Rect(0, aux->rows - 20, 90, aux->rows - 5), Scalar(192, 192, 192), FILLED);
  putText(*aux, text.str(), Point(0, aux->rows - 5), FONT_HERSHEY_SIMPLEX, .5, textColor);
}

int main()
{
  Mat_<Vec3b> img(400, 400, Vec3b(192, 192, 192));
  namedWindow("Original", WINDOW_AUTOSIZE);
  setMouseCallback("Original", funcaoMouse, &img);

  Mat_<Vec3b> src(400, 400, Vec3b(192, 192, 192));
  int valor = 0;
  createTrackbar("Cor", "Original", &valor, 3, funcaoCor, &src);

  do
  {
    imshow("Original", img);
  } while (waitKey(15) != 27);
  return 0;

}
