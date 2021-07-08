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
      <div class="field">
		  <label class="label">ID</label>
		  <div class="control">
		    <input class="input" type="text" placeholder="Text input">
		  </div>
		</div>
		
		<div class="field">
		  <label class="label">Username</label>
		  <div class="control has-icons-left has-icons-right">
		    <input class="input is-success" type="text" placeholder="Text input" value="bulma">
		    <span class="icon is-small is-left">
		      <i class="fas fa-user"></i>
		    </span>
		    <span class="icon is-small is-right">
		      <i class="fas fa-check"></i>
		    </span>
		  </div>
		  <p class="help is-success">This username is available</p>
		</div>
		
		
		<div class="field">
		  <label class="label">Password</label>
		  <div class="control has-icons-left has-icons-right">
		    <input class="input" type="password" placeholder="********">
		    <span class="icon is-small is-left">
		      <i class="fas fa-user"></i>
		    </span>
		    <span class="icon is-small is-right">
		      <i class="fas fa-check"></i>
		    </span>
		  </div>
		  <p class="help is-success">This username is available</p>
		</div>
		
		<div class="field is-grouped">
		  <div class="control">
		    <button class="button is-link">Submit</button>
		  </div>
		  <div class="control">
		    <button class="button is-link is-light">Cancel</button>
		  </div>
		</div>
      <!--  -->
    </section>
  </div>
</div>
</section>


<script type="text/javascript"></script>

</body>
</html>