"""
# My first app
Here's our first attempt at using data to create a table:
"""

import streamlit as st
import pandas as pd
import numpy as np

st.set_page_config(layout="wide")
st.title("MC TM CES Web Apps :spider_web:")

df = pd.DataFrame(np.random.randn(10, 20), columns=("col %d" % i for i in range(20)))
st.dataframe(df.style.highlight_max(axis=0))

last_rows = np.random.randn(1, 1)
chart = st.line_chart(last_rows)

for i in range(1, 101):
    new_rows = last_rows[-1, :] + np.random.randn(50, 1).cumsum(axis=0)
    chart.add_rows(new_rows)
    last_rows = new_rows
    time.sleep(0.06)

# Streamlit widgets automatically run the script from top to bottom. Since
# this button is not connected to any other logic, it just causes a plain
# rerun.
st.button("Re-run")

# with st.container():
#    # You can call any Streamlit command, including custom components:
#    st.bar_chart(np.random.randn(50, 3))

# col1, col2, col3 = st.columns(3)

# with col1:
#    st.header("A cat")
#    st.image("https://static.streamlit.io/examples/cat.jpg")

# with col2:
#    st.header("A dog")
#    st.image("https://static.streamlit.io/examples/dog.jpg")

# with col3:
#    st.header("An owl")
#    st.image("https://static.streamlit.io/examples/owl.jpg")
