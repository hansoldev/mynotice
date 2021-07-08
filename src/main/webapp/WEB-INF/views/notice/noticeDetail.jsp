<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	
</script>

<section class="section">
<div class="modal">
  <div class="modal-background"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title">DETAIL</p>
      <button class="delete" aria-label="close" onclick="deleteModal('${param.id}');"></button>
    </header>
    <section class="modal-card-body">
      <!-- Content ... -->
      <div class="tile is-ancestor">
<!-- 		  <div class="tile is-4 is-vertical is-parent"> -->
		<!--     <div class="tile is-child box"> -->
		<!--       <p class="title">One</p> -->
		<!--       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p> -->
		<!--     </div> -->
		<!--     <div class="tile is-child box"> -->
		<!--       <p class="title">Two</p> -->
		<!--       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p> -->
		<!--     </div> -->
		<!--   </div> -->
		  <div class="tile is-parent">
		  	<div class="tile is-child box">
		      <p class="title">${data.title}</p>
		      <p class="contents">${data.contents}</p>
		    </div>
		  </div>
		</div>
      <!--  -->
    </section>
    <footer class="modal-card-foot">
      <button class="button is-success">Save changes</button>
      <button class="button" onclick="deleteModal('${param.id}');">Cancel</button>
    </footer>
  </div>
</div>
</section>


<script type="text/javascript"></script>

</body>
</html>