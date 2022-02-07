import cv2
import numpy as np
from matplotlib import pyplot as plt
img = cv2.imread('messi5.jpg',0)
messi_face = cv2.imread('messi_face.jpg',0)
w, h = messi_face.shape[::-1]

methods = ['cv2.TM_CCOEFF']

for meth in methods:
    method = eval(meth)

res = cv2.matchTemplate(img,messi_face,method)
min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)

if method in [cv2.TM_SQDIFF]:top_left = min_loc
else:top_left = max_loc
bottom_right = (top_left[0] + w, top_left[1] + h)
cv2.rectangle(img,top_left, bottom_right, 255, 2)

plt.subplot(121), plt.imshow(res,'gray')
plt.title('Matching Result')
plt.subplot(122), plt.imshow(img, 'gray')
plt.title('Detected Point')
plt.show()