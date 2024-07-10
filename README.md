# Training and Deploying a Machine Learning Model Using Azure Machine Learning

In this repository, we use the [Iris](https://www.kaggle.com/datasets/uciml/iris) dataset, [AutoML](https://azure.microsoft.com/en-us/solutions/automated-machine-learning) and [Azure Machine Learning Studio](https://azure.microsoft.com/en-au/products/machine-learning) to train and deploy a live machine learning model on an interactive web application.

## Table of Contents
1. [Packages](#packages)
2. [Azure Resources Required](#azure-resources-required)
3. [Project Structure](#project-structure)
4. [Setup and Installation](#setup-and-installation)
5. [Usage](#usage)
6. [Model Training](#model-training)
7. [Model Deployment](#model-deployment)
8. [Testing the Deployed Model](#testing-the-deployed-model)
9. [Contributing](#contributing)
10. [License](#license)

## Packages

- [pandas](https://pandas.pydata.org/docs/) - Data manipulation and analysis library
- [joblib](https://joblib.readthedocs.io/en/latest/) - Library for saving and loading Python objects
- [pickle5](https://docs.python.org/3/library/pickle.html) - Object serialization
- [azureml-sdk](https://docs.microsoft.com/en-us/python/api/overview/azure/ml/?view=azure-ml-py) - Azure Machine Learning Python SDK
- [scikit-learn](https://scikit-learn.org/stable/user_guide.html) - Machine learning library
- [matplotlib](https://matplotlib.org/stable/contents.html) - Plotting library
- [seaborn](https://seaborn.pydata.org/tutorial.html) - Statistical data visualization

## Azure Resources Required

- [Azure subscription](https://azure.microsoft.com/en-us/free/) - If you don't have one, you can create a free account. [Learn how to create a subscription](https://docs.microsoft.com/en-us/azure/cost-management-billing/manage/create-subscription)
- [Azure Machine Learning Workspace](https://docs.microsoft.com/en-us/azure/machine-learning/concept-workspace) - This is your main working area in Azure ML. [Learn how to create a workspace](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-manage-workspace)
- [Azure Machine Learning Compute Instance](https://docs.microsoft.com/en-us/azure/machine-learning/concept-compute-instance) - This is the compute resource where you'll run your notebooks. [Learn how to create a compute instance](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-create-manage-compute-instance)

## Project Structure

```
├── notebooks/
│   ├── data_preparation.ipynb
│   ├── model_training.ipynb
│   └── model_deployment.ipynb
├── scripts/
│   └── test_model.R
├── requirements.txt
├── README.md
└── LICENSE
```

## Setup and Installation

1. Clone this repository:
   ```
   git clone https://github.com/Lethabo200/IRIS-AUTOML-DEPLOYMENT.git
   cd yourfolder
   ```

2. Set up your Azure resources:
   - Create an Azure subscription if you don't have one.
   - Create an Azure Machine Learning workspace.
   - Create a compute instance in your workspace.

3. Install the required packages:
   ```
   pip install -r requirements.txt
   ```

## Usage

1. Open the Jupyter notebooks in the `notebooks/` directory using your Azure ML compute instance.
2. Follow the notebooks in order:
   - `data_preparation.ipynb`: Prepare and explore the Iris dataset.
   - `model_training.ipynb`: Train the model using AutoML.
   - `model_deployment.ipynb`: Deploy the trained model.
3. Read the documentation of the whole process in `Documentation or Report.pdf`

## Model Training

We use Azure AutoML to train our model. AutoML automatically tries various algorithms and hyperparameters to find the best model for our data. The process is detailed in the `model_training.ipynb` notebook.

## Model Deployment

After training, we deploy the best model as a web service using Azure Container Instances. This process is covered in the `model_deployment.ipynb` notebook.

## Testing the Deployed Model

You can test the deployed model using the R script provided in `scripts/test_model.R`. Make sure to replace the endpoint URL with your actual deployed model's URL.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.


  









