#include <opencv2/opencv.hpp>
#include <vector>

using namespace cv;
using namespace std;

int main()
{
  Mat img, cnv;
  vector<Mat> canaisCor(3);

  img = imread("/Users/rodrigo/Pictures/missao.jpg");

  namedWindow("teste", WINDOW_NORMAL);
  namedWindow("conv", WINDOW_NORMAL);
  // converter img
  cvtColor(img, cnv, COLOR_BGR2Luv);

  // save an image
  // imwrite("/Users/rodrigo/Pictures/convertidade.jpg", cnv);

  split(cnv, canaisCor);

  imshow("teste", img);
  imshow("conv", cnv);

  imshow("canal1", canaisCor[0]);
  imshow("canal2", canaisCor[1]);
  imshow("canal3", canaisCor[2]);

  waitKey(0);

  return 0;
}