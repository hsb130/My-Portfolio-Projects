from sklearn.model_selection import train_test_split

def perform_train_test_split(x, y, test_size=0.2, random_state=42):
    """Perform train-test split"""
    return train_test_split(x, y, test_size=test_size, random_state=random_state)
