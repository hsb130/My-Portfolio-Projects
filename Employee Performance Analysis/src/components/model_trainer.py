from sklearn.linear_model import SGDClassifier

def train_model(x_train, y_train):
    """Train the SGD Classifier model"""
    sgd = SGDClassifier()
    sgd.fit(x_train, y_train)
    return sgd
