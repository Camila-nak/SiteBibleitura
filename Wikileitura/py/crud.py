import mysql.connector

# para conectar o mysql com python
def conectar():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="sua_senha", #obrigatorio a virgula no final
        database="WituraDB" #o nome do sql = o nome do banco de dados
    )

def livros_nome(nome,genero,ano_lancado,autor):
    con_liv = conectar()
    cru_liv = con_liv.cursor()
    cru_liv.execute ("INSERT INTO livros(nome,genero,ano_lancado,autor) VALUES (%s, %s, %s, %s)", (nome,genero,ano_lancado,autor)) 
    con_liv.commit()
    print("Criado com id: ", cru_liv.lastrowid)
    cru_liv.close()
    con_liv.close()