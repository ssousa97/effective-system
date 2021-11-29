CREATE TABLE IF NOT EXISTS Idade(idade integer primary key);
CREATE TABLE IF NOT EXISTS Sexo(sexo text primary key);
CREATE TABLE IF NOT EXISTS Municipio(nome text primary key);

CREATE TABLE IF NOT EXISTS Paciente(
    idade integer,
    sexo text,
    municipio text, 
    doencaPre boolean

    foreign key(idade) references Idade(idade),
    foreign key(sexo) references Sexo(sexo),
    foreign key(municipio) references Municipio(nome)
);

INSERT OR IGNORE INTO Sexo(sexo)
VALUES ('M'), ('F'), ('NE');
