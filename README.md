

# Eye Disease Classification Using Deep Learning

## Overview

The Eye Disease Classification project aims to develop a robust model for the automated classification of retinal images into four distinct disease types: Glaucoma, Cataract, Normal, and Diabetic Retinopathy. Leveraging a diverse dataset sourced from reputable repositories, the project employs a Convolutional Neural Network (CNN) architecture, with a focus on utilizing the pre-trained VGG19 model for its image feature extraction capabilities.

## Dataset

The dataset used in this project consists of retinal images carefully curated from Kaggle, ensuring a balanced representation of four disease types. 

## Model Architecture

The chosen model architecture is based on the VGG19 CNN, known for its effectiveness in image classification tasks. Key details about the model's architecture, input size, convolutional layers, pooling, activation functions, and fully connected layers are provided in the Report.

## Data Processing

The dataset undergoes meticulous processing to prepare it for model training. This involves loading images, organizing them into a DataFrame, and creating data generators for training and validation. Data augmentation techniques, such as rotation and zooming, are applied to enhance the model's generalization capabilities. 

## Training

The training phase involves splitting the dataset into training and validation sets, employing data generators, and utilizing transfer learning with the pre-trained VGG19 model. The training process is monitored with checkpoints and early stopping mechanisms. 

## Result 
![eye disease acc](https://github.com/somaiaahmed/Eye-diseases-classification/assets/52898207/c1759152-ee04-417d-b61c-3b2369a85eeb) 


## Evaluation
![Model Eval](https://github.com/somaiaahmed/Eye-diseases-classification/assets/52898207/cd10f3aa-88aa-43f4-bdef-d2f4ec1e883b)


## Deployment
As part of our project development, we have successfully built a dedicated web page and a mobile application. These platforms provide user-friendly interfaces to interact with the eye disease classification model, offering seamless access to the classification capabilities on both web and mobile devices.

You can try it now! "https://hassnaa11.github.io/Catanova/
" 
## Model API
The API is to integrate the model implemented in python with the website and the mobile app.
### Technologies Used
.NET Core: The API is built using the powerful and cross-platform .NET Core framework, ensuring reliability and scalability.
### Prerequisites
Before running the API, ensure that the following prerequisites are met on the hosting server:
- [Python](https://www.python.org/downloads/) (Required for the machine learning model)
- change the location of the python.dll from /Mode lAPI/Services/Classes/ModelService.cs \
  to the location of the dll exists in the server
### API Endpoints
POST https://dlmodel-001-site1.btempurl.com/api/Model: Send an image as a POST request to get the classification result as text.

