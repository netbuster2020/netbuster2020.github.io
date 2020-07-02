<div class="container">
    <div class="row">
        <h2 class="text-center mx-auto p-4">Categorias</h2>
        <div class="col-sm-12">
            <table class="table tar table-bordered text-center border-success text-white">
                <thead class="bg-primary">
                    <tr>
                        <th>Título</th>
                        <th>Configuracion</th>
                    </tr>
                </thead>
                <tbody class="table-hover bg-dark category-list">
                    <tr>
                        <td>{{title}}</td>
                        <td class="d-flex justify-content-center">
                            <a href="/admin/category/edit/{{_id}}" class="btn btn-sm btn-warning mr-2"
                                role="button">Edit</a>
                            <form action="/admin/category/{{_id}}?newMethod=DELETE" method="post">
                                <button class="btn btn-sm btn-danger" type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </tbody>

            </table>
        </div>
        <hr>
        <div class="col-sm-12 mx-auto">
            <h1>Agregar categoria</h1>
            <div class="form-group mt-1">
                <label for="title">Título</label>
                <input type="text" class="form-control" id="category-title" name="title"
                    placeholder="Ingresa un título">
            </div>
            <button class="btn btn-outline-success btn-lg" id="create-category-button">Crear categoria</button>
        </div>
    </div>
</div>