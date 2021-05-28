A = zeros(600,600,3);

%RED
A(1:100,1:100,1) =1

%YELLOW
A(501:600,501:600,1) =1
A(501:600,501:600,3) =1

%Green
A(101:200,101:200,2) =1

%blue
A(201:300,201:300,3) =1

%Magenta
A(301:400,301:400,1) =1
A(301:400,301:400,2) =1

%Cyan
A(401:500,401:500,2) =1
A(401:500,401:500,3) =1



imshow(A); impixelinfo()
B= rgb2hsv(A)

figure();
subplot(1,3,1); imshow(B(:,:,1));title("HUE");
subplot(1,3,2); imshow(B(:,:,2));title("Saturation");
subplot(1,3,3); imshow(B(:,:,3));title("Intensity");
imwrite(B,'HSI.jpg')
imwrite(B(:,:,1),'H.jpg')
imwrite(B(:,:,2),'S.jpg')
imwrite(B(:,:,3),'I.jpg')
imwrite(A,'RGBCMY.jpg')
