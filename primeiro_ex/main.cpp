#include <opencv2/opencv.hpp>

#ifdef _WIN32
#define CLEAR system("cls")
#else
#define CLEAR system("clear")
#endif
using namespace cv;
using namespace std;
const unsigned BUFFER = 4096;

MatND handleHistogram(const Mat image, Mat *histogram)
{
  MatND hist;
  int channels[] = {0, 1};
  int histSize[1];
  float hranges[2] = {0, 255};
  const float *ranges[1];
  double maxVal = 0, minVal = 0;
  ranges[0] = hranges;

  histSize[0] = 256;
  calcHist(&image, 1, channels, Mat(), hist, 1, histSize, ranges);

  minMaxLoc(hist, &minVal, &maxVal, 0, 0);
  // define o maior ponto com 90% do tamanho
  int hpt = static_cast<int>(0.9 * histSize[0]);
  // Desenha uma linha para cada faixa
  for (int h = 0; h < histSize[0]; h++)
  {
    float binVal = hist.at<float>(h);
    int intensity = static_cast<int>(binVal * hpt / maxVal);
    line(*histogram, Point(h, histSize[0]),
         Point(h, histSize[0] - intensity),
         Scalar::all(0));
  }
  return hist;
}
void doConversion(char *choseImage, unsigned conversionType)
{
  Mat originalImage, convertedImage, histogram(256, 256, CV_8U, Scalar(255));
  MatND histo;
  originalImage = imread(choseImage);
  namedWindow("Imagem original", WINDOW_NORMAL);
  imshow("Imagem original", originalImage);
  cvtColor(originalImage, convertedImage, conversionType);
  namedWindow("Imagem convertida", WINDOW_NORMAL);
  imshow("Imagem convertida", convertedImage);

  vector<Mat> colorChannels(3);
  split(convertedImage, colorChannels);
  namedWindow("Imagem canal 1", WINDOW_NORMAL);
  imshow("Imagem canal 1", colorChannels[0]);
  namedWindow("Imagem canal 2", WINDOW_NORMAL);
  imshow("Imagem canal 2", colorChannels[1]);
  namedWindow("Imagem canal 3", WINDOW_NORMAL);
  imshow("Imagem canal 3", colorChannels[2]);

  //Convertida
  imwrite("./convertedImage" + to_string(conversionType) + ".png", convertedImage);

  //Convertida canais
  imwrite("./convertedImage" + to_string(conversionType) + "_converted1.png", colorChannels[0]);
  imwrite("./convertedImage" + to_string(conversionType) + "_converted2.png", colorChannels[1]);
  imwrite("./convertedImage" + to_string(conversionType) + "_converted3.png", colorChannels[2]);

  histo = handleHistogram(originalImage, &histogram);
  namedWindow("Histograma - Original", WINDOW_NORMAL);
  imshow("Histograma - Original", histogram);
  imwrite("./histogram" + to_string(conversionType) + "_original.png", histogram);

  histo = handleHistogram(convertedImage, &histogram);
  namedWindow("Histograma - Conversão", WINDOW_NORMAL);
  imshow("Histograma - Conversão", histogram);
  imwrite("./histogram" + to_string(conversionType) + "_converted.png", histogram);

  histo = handleHistogram(colorChannels[0], &histogram);
  namedWindow("Histograma - Conversão C1", WINDOW_NORMAL);
  imshow("Histograma - Conversão C1", histogram);
  imwrite("./histogram" + to_string(conversionType) + "_converted_c1.png", histogram);

  histo = handleHistogram(colorChannels[1], &histogram);
  namedWindow("Histograma - Conversão C2", WINDOW_NORMAL);
  imshow("Histograma - Conversão C2", histogram);
  imwrite("./histogram" + to_string(conversionType) + "_converted_c2.png", histogram);

  histo = handleHistogram(colorChannels[2], &histogram);
  namedWindow("Histograma - Conversão C3", WINDOW_NORMAL);
  imshow("Histograma - Conversão C3", histogram);
  imwrite("./histogram" + to_string(conversionType) + "_converted_c3.png", histogram);
}

int main()
{
  CLEAR;

  int choice;
  char imageDir[BUFFER];
  setlocale(LC_ALL, "ptb");

  do
  {

    cout << "Qual o formato de cor?\n"
            "1: RGB\n"
            "2: HSV\n"
            "3: XYZ\n"
            "4: HLS\n"
            "5: YCrCb\n"
            "6: Lab\n"
            "7: Luv\n"
            "9: Sair\n"
         << endl;
    cin >> choice;

    printf("Diretorio da imagem: ");
    cin >> imageDir;

    switch (choice)
    {
    case 9:
      exit(EXIT_SUCCESS);
      break;
    case 1:
      doConversion(imageDir, COLOR_BGR2RGB);
      break;
    case 2:
      doConversion(imageDir, COLOR_BGR2HSV);
      break;
    case 3:
      doConversion(imageDir, COLOR_BGR2XYZ);
      break;
    case 4:
      doConversion(imageDir, COLOR_BGR2HLS);
      break;
    case 5:
      doConversion(imageDir, COLOR_BGR2YCrCb);
      break;
    case 6:
      doConversion(imageDir, COLOR_BGR2Lab);
      break;
    case 7:
      doConversion(imageDir, COLOR_BGR2Luv);
      break;
    default:
      // LIMPA;
      printf("[-] Opção inválida!\n");
      waitKey(2000);
      break;
    }
    waitKey(0);
    CLEAR;
  } while (choice != 9);

  return EXIT_SUCCESS;
}
