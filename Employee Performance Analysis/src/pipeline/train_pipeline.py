from data_ingestion import load_data
from data_preprocessing import remove_unnecessary_columns, convert_attrition_to_binary
from train_test_split import perform_train_test_split
from column_transformer import create_column_transformer
from model_trainer import train_model

def train_pipeline(file_path, target_column):
    """Pipeline for training the model"""
    # Load data
    df = load_data(file_path)

    # Remove unnecessary columns
    df = remove_unnecessary_columns(df)

    # Convert 'Attrition' column to binary
    df = convert_attrition_to_binary(df)

    # Split data into features and target
    x = df.drop(columns=target_column)
    y = df[target_column]

    # Perform train-test split
    x_train, x_test, y_train, y_test = perform_train_test_split(x, y)

    # Identify categorical and numerical columns
    categorical_columns = x_train.select_dtypes(include=['object']).columns
    numerical_columns = x_train.select_dtypes(include=['number']).columns

    # Create column transformer
    column_transformer = create_column_transformer(categorical_columns, numerical_columns)

    # Preprocess the training data
    x_train_preprocessed = column_transformer.fit_transform(x_train, y_train)

    # Train the model
    model = train_model(x_train_preprocessed, y_train)

    return model, column_transformer, x_test
