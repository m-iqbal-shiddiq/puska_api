import random
import datetime
import pandas as pd

import matplotlib.pyplot as plt

def extract_date(dt):
    return dt.date()

def forward(start_date, end_date, df):
    current_date = start_date + datetime.timedelta(days=1)
    
    result_df = df.copy()

    while current_date < end_date:
        start_filter_date = current_date - datetime.timedelta(days=7)
        end_filter_date = current_date - datetime.timedelta(days=1)
        temp_df = result_df[(result_df['ds'] >= start_filter_date) & (result_df['ds'] <= end_filter_date)]
        
        avg_value = sum(temp_df['y'].tolist()) / 7
        add_value = random.uniform(-1, 1)
        avg_value = round(avg_value + add_value, 2)
        
        result_df.loc[result_df.index.max() + 1] = {
            'ds': current_date,
            'y': avg_value + add_value
        }
        
        current_date += datetime.timedelta(days=1)
    
    return result_df
        
def backward(start_date, end_date, df):
    
    current_date = end_date - datetime.timedelta(days=1)
    
    result_df = df.copy()
    
    while current_date >= start_date:
        
        start_filter_date = current_date + datetime.timedelta(days=1)
        end_filter_date = current_date + datetime.timedelta(days=7)
        
        temp_df = result_df[(result_df['ds'] >= start_filter_date) & (result_df['ds'] <= end_filter_date)]
        
        value_list = temp_df['y'].tolist()

        value = (value_list[6] * 7) - sum(value_list[:6])
       
        add_value = random.uniform(-1, 1)
        value = round(value + add_value, 2)
        
        new_data_df = pd.DataFrame({'ds': current_date, 'y': value}, index=[0])
        
        result_df = pd.concat([new_data_df, result_df]).reset_index(drop=True)
        
        current_date -= datetime.timedelta(days=1)
    
    return result_df
    
if __name__ == "__main__":
    INPUT_PATH = "C:/Users/muham/Documents/SIDE/PUSKA API/datasets/preprocess/probolinggo.xlsx"
    OUTPUT_PATH = "C:/Users/muham/Documents/SIDE/PUSKA API/datasets/dummy/probolinggo.xlsx"
    
    START_DATE = datetime.date(2020, 1, 1)
    
    df = pd.read_excel(INPUT_PATH)
    df['ds'] = pd.to_datetime(df['ds'])
    df['ds'] = df['ds'].apply(extract_date)
    
    print(df.shape)
    print(df.head())
    
    df = forward(df['ds'].iloc[-1], datetime.date.today(), df)
    # df = backward(START_DATE, df['ds'].iloc[0], df)
    
    print(df.shape)
    print(df.head())
    
    print(df['y'].plot())
    plt.show()
    
    df.to_excel(OUTPUT_PATH, index=False)
    print(df.iloc[160: 185])