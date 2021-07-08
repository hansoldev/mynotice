<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/commonHeader.jsp" %>


<section class="section">
<!-- Main container -->
<nav class="level">
  <!-- Left side -->
  <div class="level-left">
<!--     <div class="level-item"> -->
<!--       <p class="subtitle is-5"> -->
<!--         <strong>123</strong> posts -->
<!--       </p> -->
<!--     </div> -->
    <div class="level-item">
      <div class="field has-addons">
        <p class="control">
          <input class="input" type="text" placeholder="Find a post">
        </p>
        <p class="control">
          <button class="button">
            Search
          </button>
        </p>
      </div>
    </div>
  </div>

  <!-- Right side -->
  <div class="level-right">
<!--     <p class="level-item"><strong>All</strong></p> -->
<!--     <p class="level-item"><a>Published</a></p> -->
<!--     <p class="level-item"><a>Drafts</a></p> -->
<!--     <p class="level-item"><a>Deleted</a></p> -->
<!--     <p class="level-item"><a class="button is-success">New</a></p> -->
    <p class="level-item"><button class="button is-small" onclick='addNotice();' >등록</button></p>
	<p class="level-item"><button class="button is-small" onclick='deleteNotice();'>삭제</button></p>
  </div>
</nav> 
<div id="grid"></div>
<!-- <div id="tui-pagination-container" class="tui-pagination"></div> -->


</section>
<div id="dd">

</div>

 <script type="text/javascript">
 
 
// button.onclick = function(event) {
// 	    if (event.altKey && event.shiftKey) {
// 	      alert('야호!');
// 	    }
	
// };
 
// //ES6
//  import Pagination from 'tui-pagination';
 
 const dataSource = {
		  contentType: 'application/json',
		  api: {
		    readData: {
		    	url: "${contextPath}/getNoticeData.so",
		        method: 'POST'
		    },
		    updateData: {
		    	url: "${contextPath}/getNoticeData.so",
		        method: 'POST'
		    }
		  }
		};
 

//  // CommonJS
//  const Pagination = require('tui-pagination');

//  // Browser
//  const Pagination = tui.Pagination;

//  const container = document.getElementById('pagination');
//  const options = { // below default value of options
//       totalItems: 10,
//       itemsPerPage: 10,
//       visiblePages: 10,
//       page: 1,
//       centerAlign: false,
//       firstItemClassName: 'tui-first-child',
//       lastItemClassName: 'tui-last-child',
//       template: {
//           page: '<a href="#" class="tui-page-btn">{{page}}</a>',
//           currentPage: '<strong class="tui-page-btn tui-is-selected">{{page}}</strong>',
//           moveButton:
//               '<a href="#" class="tui-page-btn tui-{{type}}">' +
//                   '<span class="tui-ico-{{type}}">{{type}}</span>' +
//               '</a>',
//           disabledMoveButton:
//               '<span class="tui-page-btn tui-is-disabled tui-{{type}}">' +
//                   '<span class="tui-ico-{{type}}">{{type}}</span>' +
//               '</span>',
//           moreButton:
//               '<a href="#" class="tui-page-btn tui-{{type}}-is-ellip">' +
//                   '<span class="tui-ico-ellip">...</span>' +
//               '</a>'
//       }
//  };
//  const pagination = new Pagination(container, options);
 
//  paganation.on('afterMove', (event) => {
//      const currentPage = event.page;
//      console.log(currentPage);
// });
 
 
 
 class CheckboxRenderer {
     constructor(props) {
       const { grid, rowKey } = props;

       const label = document.createElement('label');
       label.className = 'checkbox';
       label.setAttribute('for', String(rowKey));

       const hiddenInput = document.createElement('input');
       hiddenInput.className = 'hidden-input';
       hiddenInput.id = String(rowKey);

       const customInput = document.createElement('span');
       customInput.className = 'custom-input';

       label.appendChild(hiddenInput);
       label.appendChild(customInput);

       hiddenInput.type = 'checkbox';
       hiddenInput.addEventListener('change', () => {
         if (hiddenInput.checked) {
           grid.check(rowKey);
         } else {
           grid.uncheck(rowKey);
         }
       });

       this.el = label;

       this.render(props);
     }

     getElement() {
       return this.el;
     }

     render(props) {
       const hiddenInput = this.el.querySelector('.hidden-input');
       const checked = Boolean(props.value);

       hiddenInput.checked = checked;
     }
   }

const grid = new tui.Grid({
    el: document.getElementById('grid'),
    data: dataSource,
    scrollX: false,
    scrollY: false,
    rowHeaders: [ 
   	 {
         type: 'checkbox',
         header: `
         <label for="all-checkbox" class="checkbox">
           <input type="checkbox" id="all-checkbox" class="hidden-input" name="_checked" />
           <span class="custom-input"></span>
         </label>
       `,
         renderer: {
           type: CheckboxRenderer
         }
       },
       'rowNum'
   	 ],
    columns: [
      {header :'제목',   name :'title',   align:'left', escapeHTML : true},    
//       {header :'제목',   name :'title',   align:'left', formatter :function(e){debugger;console.log(e)} ,escapeHTML : true},//formatter 쓰는법
      {header :'ID',     name :'userid',     width:70,           align:'center'},                       
      {header :'DATE', name :'updatedate', width:190, align:'center'},
      {header :'myid', name :'myid', hidden:true}
    ],
    pageOptions: {
        useClient: true,
        perPage: 5
    }
 });
 
 grid.on('check', ev => {
	 //debugger;
	//체크박스 삭제 할 때
	//grid.getCheckedRows().forEach((v,i,a)=>{console.log(v.title+", "+i+", "+a);})
		
 });
 
grid.on('click', ev => {
	//체크박스 클릭시에도 이벤트 발생함...어떡할까..
	if(ev.rowKey !== undefined && ev.columnName != "_checked"){//그리드 클릭 시에만 처리 => '==='는 type까지 확인한다고 함.
		opendModal('${contextPath}/noticeDetail.so', 'notice_detail_modal', {myid : grid.getValue(ev.rowKey, 'myid')}, true);
	}
});
 
const deleteNotice = () => {
// 	grid.getCheckedRows().forEach((v,i,a) => {
		
// 	})

// 	const checkArry = JSON.stringify(grid.getCheckedRows());
	
	//삭제
// 	fetch('${contextPath}/deleteNotice.so?checkarry='+checkArry, {
// 	fetch('${contextPath}/deleteNotice.so', {
// 		method : 'POST',
// 		headers : {
// 			'Content-Type': 'application/json',
//  	        'Accept': 'application/json'
// // 			 "Content-Type": "text/plain",
// // 			  "Content-Length": content.length.toString(),
// // 			  "X-Custom-Header": "ProcessThisImmediately",
// 		},
// 		body : {"checkArry" : checkArry}
// 	})
// 	.then((data) => alert("삭제가 성공했습니다."))
// 	.catch((error) => alert("삭제가 실패했습니다."));
// 	//console.log(v.title+", "+i+", "+a);
	
	
// 	var formData = {
// 	"name": [ "홍길동", "김철수", "이영희" ];
// 	};

// 	const checkArry = grid.getCheckedRows();
	
	
	//grid.getColumnValues('myid')


	let arr = new Array();
	grid.getCheckedRows().forEach((v) => {
		arr.push(v.myid);
	});
	
	if(arr.length == 0){
		alert("삭제할 대상을 선택하십시오.");
	}

	$.ajax({
	type: "post",
	url: '${contextPath}/deleteNotice.so',
	dataType: "json",
	data: {"data" : arr},
	success: function (data) {
		if(data.result > 0) {
			alert("삭제 되었습니다.");
			grid.reloadData();
		}
		else {
			alert("실패했습니다");
		}
	}
	});

}
 
 
//modal
const fetchTest = () => {
// 	fetch('${contextPath}/getNoticeData.so',{
// 		  method : 'POST',
// 	      headers : { 
// 	          'Content-Type': 'application/json',
// 	          'Accept': 'application/json'
// 	         }

// 	      })
// 	.then((response) => {console.log(response); response.json();})
// 	.then((data) => console.log(data))
// 	.catch((error) => console.log("error:", error));

}

const openDetail = () => {
	 opendModal('${contextPath}/noticeDetail.so', 'notice_detail_modal', {myid : 1}, true);
}

const addNotice = () => {
	 opendModal('${contextPath}/addNotice.so', 'notice_add_modal', null, true);
}




</script>

<div id="notice_detail_modal"></div>
<div id="notice_add_modal"></div>
</body>
</html>