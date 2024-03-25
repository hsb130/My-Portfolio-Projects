from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis as LDA

def create_column_transformer():
    """Create a ColumnTransformer for preprocessing"""
    return ColumnTransformer(
        transformers=[
            ('num', StandardScaler(), numerical_columns),
            ('cat', OneHotEncoder(drop='first'), categorical_columns),
            ('lda', LDA(n_components=1), numerical_columns)
        ])
