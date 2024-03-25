def remove_unnecessary_columns(df):
    """Remove unnecessary columns from DataFrame"""
    return df.drop(['EmployeeCount', 'EmployeeNumber', 'StandardHours'], axis=1)

def convert_attrition_to_binary(df):
    """Convert 'Attrition' column to binary"""
    df['Attrition'] = df['Attrition'].replace({'Yes': 1, 'No': 0})
    return df
