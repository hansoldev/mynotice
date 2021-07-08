<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	
</script>

<section class="section">
	<div class="modal">
		<div class="modal-background"></div>
		<div class="modal-card">
		<form action='./insertNotice.so' method="post" >
			<header class="modal-card-head">
				<p class="modal-card-title">공지사항 등록</p>
				<button class="delete" aria-label="close" onclick="deleteModal('${param.id}');"></button>
			</header>
			<section class="modal-card-body">
				<!-- Content -->
				
					<div class="field">
						<label class="label">제목</label>
						<div class="control">
							<input class="input" type="text" name="title" placeholder="Text input">
						</div>
					</div>
					<div class="field">
						<label class="label">내용</label>
						<div class="control">
							<textarea class="textarea" name="contents" rows="13" placeholder="Textarea"></textarea>
						</div>
					</div>
				
				<!-- //Content -->
			</section>
			<footer class="modal-card-foot">
	<!--       <button class="button is-success">Save changes</button> -->
	<%--       <button class="button" onclick="deleteModal('${param.id}');">Cancel</button> --%>
	 			<button class="button is-link" type="submit">Submit</button>
	 			<button class="button is-link is-light" onclick="deleteModal('${param.id}');">Cancel</button>
			</footer>
		</form>
		</div>
	</div>
</section>


<script type="text/javascript"></script>

</body>
</html>