<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	
</script>

<section class="section">
<div class="modal">
  <div class="modal-background"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title">LOG IN</p>
      <button class="delete" aria-label="close" onclick="deleteModal('${param.id}');"></button>
    </header>
    <section class="modal-card-body">
      <!-- Content ... -->
      <form class="box">
		  <div class="field">
		    <label class="label">ID</label>
		    <div class="control">
		      <input class="input" type="email" placeholder="e.g. alex@example.com">
		    </div>
		  </div>
		
		  <div class="field">
		    <label class="label">Password</label>
		    <div class="control">
		      <input class="input" type="password" placeholder="********">
		    </div>
		  </div>
		
		  <button class="button is-primary">로그인</button>
		</form>
      <!--  -->
    </section>
<!--     <footer class="modal-card-foot"> -->
<!--       <button class="button is-success">Save changes</button> -->
<%--       <button class="button" onclick="deleteModal('${param.id}');">Cancel</button> --%>
<!--     </footer> -->
  </div>
</div>
</section>


<script type="text/javascript"></script>

</body>
</html>