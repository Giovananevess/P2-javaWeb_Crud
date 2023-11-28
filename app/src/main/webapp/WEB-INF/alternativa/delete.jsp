<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Deletar Alternativa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Prova de Java WebI</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="../quiz/list">Quizzes</a>
                    <a class="nav-link active" aria-current="page" href="../questao/list">Questões</a>
                    <a class="nav-link active" aria-current="page" href="../alternativa/list">Alternativas</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h1>Remover Alternativa</h1>
        <p>Tem certeza que deseja remover a Alternativa "${alternativa.texto}"?</p>
        
        <form action="/alternativa/delete" method="post" onsubmit="return confirm('Tem certeza que deseja excluir a Alternativa?');">
            <input type="hidden" name="id" value="${alternativa.id}"/>
            
            <a href="/alternativa/list" class="btn btn-primary">Voltar</a>
            <button type="submit" class="btn btn-danger">Excluir</button>
        </form>
    </div>
</body>
</html>
