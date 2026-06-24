import pandas as pd

func = pd.read_csv('../data/funcionarios.csv')

func['salario'] = func['salario'].astype(float)

func['faixa_salarial'] = pd.cut(
    func['salario'],
    bins=[0,3000,5000,8000,15000],
    labels=[
        'Até 3k',
        '3k-5k',
        '5k-8k',
        'Acima de 8k'
    ]
)

func.to_csv(
    '../data/funcionarios_tratado.csv',
    index=False
)