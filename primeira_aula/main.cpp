#include <opencv2/opencv.hpp>

using namespace cv;

int main()
{
  Mat img;
  img = imread("/Users/rodrigo/Pictures/missão.jpg");

  namedWindow("teste", WINDOW_AUTOSIZE);
  imshow("teste", img);

  waitKey(0);

  return 0;
}