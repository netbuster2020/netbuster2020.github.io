<div class="container">


    <h3 class="alert alert-dark p-3 text-dark text-center">Nuestras categorias </h3>


    <div class="row">
        <div class="col-6 mx-auto">
            <table class="table table-bordered text-center border-success text-white">
                <thead class="bg-primary">
                <tr>
                    <th>Title</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody class="table-hover bg-dark category-list">
                {{#each categories}}
                    <tr>

                        <td>{{title}}</td>
                        <td class="d-flex justify-content-center">
                            <a href="/admin/category/edit/{{_id}}" class="btn btn-sm btn-warning mr-2" role="button">Edit</a>
                            <form action="/admin/category/{{_id}}?newMethod=DELETE" method="post">
                                <button class="btn btn-sm btn-danger" type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                {{/each}}
                </tbody>

            </table>
        </div>
    </div>

    <hr>

    <div class="row p-4">
        <div class="col-md-8">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="category-title" name="title" value="{{category.title}}">
                <input type="hidden" class="form-control" id="category-id" name="id" value="{{category._id}}">
            </div>
            <button class="btn btn-outline-warning btn-lg" id="update-category-button">Update Category</button>
        </div>
    </div>


</div>