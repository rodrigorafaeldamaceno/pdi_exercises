#include <opencv2/opencv.hpp>

using namespace cv;

int main()
{
  Mat img, cnv;
  img = imread("/Users/rodrigo/Pictures/missão.jpg");

  namedWindow("teste", WINDOW_NORMAL);
  namedWindow("conv", WINDOW_NORMAL);
  // converter img
  cvtColor(img, cnv, COLOR_BGR2Luv);

  imshow("teste", img);
  imshow("conv", cnv);

  waitKey(0);

  return 0;
}