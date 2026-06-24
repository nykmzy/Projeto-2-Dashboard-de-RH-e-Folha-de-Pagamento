import pandas as pd
import random
from faker import Faker

fake = Faker('pt_BR')

cargos = [
    'Analista',
    'Assistente',
    'Coordenador',
    'Gerente',
    'Supervisor'
]

setores = [
    'RH',
    'Financeiro',
    'TI',
    'Comercial',
    'Marketing'
]

dados = []

for i in range(1, 501):

    dados.append([
        i,
        fake.name(),
        random.choice(cargos),
        random.choice(setores),
        random.randint(2500, 12000),
        fake.date_between(
            start_date='-5y',
            end_date='today'
        )
    ])

df = pd.DataFrame(
    dados,
    columns=[
        'id',
        'nome',
        'cargo',
        'setor',
        'salario',
        'data_admissao'
    ]
)

df.to_csv(
    '../data/funcionarios.csv',
    index=False
)

print('Arquivo criado com sucesso!')