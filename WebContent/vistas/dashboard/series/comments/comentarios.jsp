<div class="row">
    <div class="container">
        <div class="col-md-10">
            <table class="table table-bordered text-center text-white">
                <thead class="bg-dark">
                <tr>
                    <th>Id</th>
                    <th>Publisher</th>
                    <th>Approve Comments</th>
                    <th>Date</th>
                    <th>Comment Body</th>
                </tr>
                </thead>

                <tbody class="text-dark">
                    <tr>
                        <td>{{id}}</td>
                        <td style="width: auto;">{{user.firstName}} {{user.lastName}}</td>
                        <td></td>
                        <td>{{date}}</td>
                        <td>{{body}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>