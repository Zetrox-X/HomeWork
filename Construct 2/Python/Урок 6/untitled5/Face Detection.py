import cv2
faceCascade = cv2.CascadeClassifier("C:\\Users\\andrey\\PycharmProjects\\untitled5\\Face.xml")
img = cv2.imread('21.jpg')
while True:
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    faces = faceCascade.detectMultiScale(
        gray,
        scaleFactor=1.2,
        minNeighbors=3,
        minSize=(20, 20))
    for (x, y, w, h) in faces:
        cv2.rectangle(img, (x, y), (x + w, y + h), (0, 0, 255), 1)

    cv2.imshow("Faces", img)

    if cv2.waitKey(0) & 0xFF == ord('q'):
        break
    cv2.destroyAllWindows()
