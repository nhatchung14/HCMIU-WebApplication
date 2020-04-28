import cv2

if __name__ == "__main__":
	image = cv2.imread("future.png")
	image = cv2.resize(image, (831, 960))
	cv2.imshow("img", image)
	cv2.waitKey(0)
	cv2.imwrite("future-editted.png", image)
