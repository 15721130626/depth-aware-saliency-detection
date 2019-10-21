function  test_sailency_dataset()
%################################### Inference Saliency Map ##################################

%#############################################################################################
%% setting caffe test config
addpath('/home/xiaohua/ivp/caffe-sal/matlab/');
use_gpu= 1;
% Set caffe mode
if exist('use_gpu', 'var') && use_gpu
  caffe.set_mode_gpu();
  gpu_id = 0;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);
else
  caffe.set_mode_cpu();
end
%% Initialize the network
test_type = 'fusion'; %fusion
if (strcmp(test_type, 'contrast'))
net_model = '';
net_weights = '';
elseif (strcmp(test_type,'fusion')) 
net_model = '/home/xiaohua/ivp/caffe-sal/models/ivp/sigmoidsum1/deploy_sigmoidsum.prototxt';
net_weights = '/home/xiaohua/ivp/caffe-sal/models/ivp/sigmoidsum1/ivp_saliency_sigmoidsumen_iter_14000.caffemodel';
end
phase = 'test'; 
net = caffe.Net(net_model, net_weights, phase);
%% load images from different Datasets
% change to your path....
%%%%RGBD-1000
imPath = '/';
depPath = '//';
salPath = '/';

files = dir([imPath '*.jpg']);
files_dep = dir([depPath '*.jpg']);
num = length(files);
time = 0;
%% test each image
for i = 1: num
    name = files(i).name(1:end-4);
    im = imread([imPath name '.jpg']);
    im_dep = imread([depPath name '.jpg']);
    %im_dep = cat(3,im_dep,im_dep,im_dep);
    if size(im,3)==1
        im = cat(3,im,im,im);
        im_dep = cat(3,im_dep,im_dep,im_dep);
    end
 switch test_type
	case 'contrast'
    % do forward pass to get scores
    tic();
    res = net.forward({prepare_image(im)},im_dep);
    for j = 1: length(res)
      be_map = permute(res{j}(:,:,1), [2 1 3]);
      fe_map = permute(res{j}(:,:,2), [2 1 3]);
      diff_map(:,:,j) = fe_map - be_map; 
    end
    mean_map = mean(diff_map,3);
    salmap = max(0,mean_map);
    time = time+toc();
	case 'fusion'
% do forward pass to get scores
    tic();
    im_dep = imresize(im_dep,[256 256], 'bilinear');
    res = net.forward({prepare_image(im),prepare_image1(im_dep)});
    salmap = permute(res{1}(:,:,2), [2 1 3]);
    time = time+toc();
  end
    salmap  = imresize(salmap,[size(im,1) size(im,2)], 'bilinear');
    imwrite(salmap, fullfile(salPath, [name '.png']));
    fprintf('Processing Img: %d/%d,\n', i, num);
end
    fprintf('Speed: %s,\n', num/time);
    caffe.reset_all();
end
%% --------------------  prepare images  ---------------------------------
function images = prepare_image(im)
% ------------------------------------------------------------------------
%IMAGE_DIM = 256;
IMAGE_DIM = 256; % Use this resolution for better results
% resize to fixed input size
im = single(im);
im = imresize(im, [IMAGE_DIM IMAGE_DIM], 'bilinear');
% permute from RGB to BGR (IMAGE_MEAN is already BGR)
im = im(:,:,[3 2 1]);
% subtract mean_data (already in W x H x C, BGR)
im(:,:,1) = im(:,:,1) -104 ;  
im(:,:,2) = im(:,:,2) -117 ;
im(:,:,3) = im(:,:,3) -123 ;
images = permute(im,[2 1 3]);
% ------------------------------------------------------------------------
end

function images = prepare_image1(im)
% ------------------------------------------------------------------------
%IMAGE_DIM = 256;
IMAGE_DIM = 256; % Use this resolution for better results
% resize to fixed input size
im = single(im);
im = imresize(im, [IMAGE_DIM IMAGE_DIM], 'bilinear');
% permute from RGB to BGR (IMAGE_MEAN is already BGR)
im = im(:,:,[3 2 1]);
% subtract mean_data (already in W x H x C, BGR)
% im(:,:,1) = im(:,:,1) -104 ;  
% im(:,:,2) = im(:,:,2) -117 ;
% im(:,:,3) = im(:,:,3) -123 ;
images = permute(im,[2 1 3]);
% ------------------------------------------------------------------------
end