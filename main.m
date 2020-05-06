clc;
clear all;
close all;

a = imread("original.png"); % image to be hidden
b = imread("cameraman.tif"); % image to hide in another image
[m,n] = size(a);

hidden_image = hiding1(a,b);
extracted_image = extract1(hidden_image,b,m,n);
