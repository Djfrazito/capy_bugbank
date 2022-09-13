#language: pt

Funcionalidade: Valida Cadastro na plataforma Bugbank

    Cenário: Realiza cadastro com sucesso
        Dado que acesso o site do Bugbank
        Quando preencho todos os dados obrigatorios para cadastro
        Então cadastro é realizado com sucesso
