import numpy as np
import tensorflow as tf
from keras.applications.resnet50 import preprocess_input
from keras.preprocessing import image

def preprocess(image_path):
    Image = image.load_img(image_path,target_size=(224,224))
    i = image.img_to_array(Image)
    i = preprocess_input(i) 
    input_arr = np.array([i])
    return input_arr

def predict(path):
    model = tf.keras.models.load_model('wwwroot\\model\\model.h5')
    predictions = model.predict(preprocess(path))
    predicted_class = np.argmax(predictions)
    disease_names = ['cataract', 'diabetic_retinopathy', 'glaucoma', 'normal']
    predicted_disease = disease_names[predicted_class]
    return predicted_disease
