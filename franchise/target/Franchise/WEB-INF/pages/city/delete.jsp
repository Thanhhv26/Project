<div class="modal fade" id="modalDelete" tabindex="-1" role="dialog"
	aria-labelledby="modalDelete" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="exampleModalLabel">Delete City</h3>
			</div>
			<div class="modal-body">
				<div id="divDelete">
					<label class="form-control-label">Id: </label>
					<span id="id"></span>
					<br>
					<label for="name" class="form-control-label">Name:</label>
					<span id="name"></span>
					<br>
					<label for="code" class="form-control-label">Code:</label>
					<span id="code"></span>
					<br>
					<label for="status" class="form-control-label">Status:</label>
					<span id="status"></span>
				</div>				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button id="btnSubmitFormDelete" type="button" class="btn btn-primary">Delete</button>
			</div>
		</div>
	</div>
</div>