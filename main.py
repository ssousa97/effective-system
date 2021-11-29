import requests
import zipfile


def download_data(link, zip_name):
    data = requests.get(link)

    open(zip_name,'wb').write(data.content)

    with zipfile.ZipFile(zip_name, 'r') as zip_ref:
        zip_ref.extractall('./doencas-existentes/')



def main():
    download_data('https://raw.githubusercontent.com/seade-R/dados-covid-sp/master/data/casos_obitos_doencas_preexistentes.csv.zip',
     'casos_obitos_doencas_preexistentes.csv.zip')

    