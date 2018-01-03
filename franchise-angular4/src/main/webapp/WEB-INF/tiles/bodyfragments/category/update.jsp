<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog"
	aria-labelledby="modalUpdate" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">				
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h3 class="modal-title" id="exampleModalLabel">Update City</h3>
			</div>
			<div class="modal-body">
				<form id="formUpdate" action="${pageContext.request.contextPath}/city/update" method="POST">
					<div class="form-group">
						<label for="id" class="form-control-label">Id:</label>
						<input name="id" type="text" class="form-control" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="name" class="form-control-label">Name:</label>
						<input name="name" type="text" class="form-control">
					</div>
					<div class="form-group">
						<label for="code" class="form-control-label">Code:</label>
						<input name="code" type="text" class="form-control">
					</div>
					<div class="form-group">
						<label for="status" class="form-control-label">Status:</label>
						<br>
						<label class="radio-inline">
							<input type="radio" name="status" value="true"> True
						</label>
						<br>
						<label class="radio-inline">
							<input type="radio" name="status" value="false"> False
						</label>
					</div>
					<!-- <div class="form-group">
						<button type="submit" class="btn btn-primary">Save</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div> -->
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button id="btnSubmitFormUpdate" type="button" class="btn btn-primary">Save</button>
			</div>
		</div>
	</div>
</div>