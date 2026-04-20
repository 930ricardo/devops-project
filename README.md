# DevOps Project – ATP PUCPR

Projeto de DevOps desenvolvido como Atividade de Trabalho Prático (ATP) para a disciplina de DevOps da PUCPR.

## Descrição

Aplicação web simples em Python/Flask que demonstra práticas de DevOps, incluindo integração contínua (CI), contêinerização com Docker e execução de testes automatizados.

## Estrutura do Projeto

```
devops-project/
├── app.py                        # Aplicação Flask
├── requirements.txt              # Dependências Python
├── Dockerfile                    # Configuração do contêiner
├── tests/
│   └── test_app.py               # Testes unitários
└── .github/
    └── workflows/
        └── ci.yml                # Pipeline de CI/CD (GitHub Actions)
```

## Endpoints

| Rota      | Método | Descrição                  |
|-----------|--------|----------------------------|
| `/`       | GET    | Retorna status da aplicação |
| `/health` | GET    | Verificação de saúde        |

## Como Executar

### Localmente

```bash
pip install -r requirements.txt
python app.py
```

A aplicação estará disponível em `http://localhost:5000`.

### Com Docker

```bash
docker build -t devops-project .
docker run -p 5000:5000 devops-project
```

## Testes

```bash
pip install -r requirements.txt
pytest tests/
```

## CI/CD

O pipeline de CI/CD é executado automaticamente via GitHub Actions a cada push ou pull request. O pipeline executa os testes unitários e constrói a imagem Docker.
