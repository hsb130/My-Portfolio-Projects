def predict_pipeline(model, column_transformer, x_test):
    """Pipeline for making predictions"""
    # Preprocess the test data
    x_test_preprocessed = column_transformer.transform(x_test)
    # Make predictions
    y_pred = model.predict(x_test_preprocessed)
    return y_pred
