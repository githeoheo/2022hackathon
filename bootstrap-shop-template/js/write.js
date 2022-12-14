const btnAddTxt = document.getElementById('btnAddTxt');
const btnAddReply = document.getElementsByName('btnAddReply');
const listLis = document.querySelectorAll('#list li');
const replyBox = document.querySelector('.reply-box');



btnAddTxt.addEventListener('click', function(){
  const userName = document.getElementById('userName');
  const title = document.getElementById('title');
  const content = document.getElementById('content');
  const list = document.getElementById('list');
  const makeLi = document.createElement('li');

  let date = new Date();
  let year = date.getFullYear();
  let month = date.getMonth() + 1; 
  let day = date.getDate();
  let hour = date.getHours();
  let minute = date.getMinutes();
  let second = date.getSeconds();
  let msecond = date.getMilliseconds();
  let fullDateTime = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + msecond;

  let addList = '';

  if (userName.value == "") {
    alert('작성자를 입력해주세요.');
    userName.focus();
  } else if (title.value == "") {
    alert('제목을 입력해주세요.');
    title.focus()
  } else if (content.value == "") {
    alert('내용을 입력해주세요.');
    content.focus();
  } else {
    addList = '<div>'
      + '<p class="title">' + title.value + '<span class="reply-count"></span></p>'
      + '<p class="user-info fs-12 txt-gray">' + userName.value + ' | ' + fullDateTime +'</p>'
      + '</div>'
      + '<div>'
      + '<p class="content">'+ content.value +'</p>'
      + '</div>'
      + '<div class="reply-box fs-12">'
      + '<div class="reply-write">'
      + '<input type="text" name="replyUserName" style="width: 18%;">'
      + '<input type="text" name="replyContent" style="width: 70%;">'
      + '<button name="btnAddReply" class="btn btn--gray">등록</button>'
      + '</div>'
      + '<div class="reply-list"></div>'
      + '</div>';           

    makeLi.innerHTML = addList;
    list.prepend(makeLi);
  }
})


list.addEventListener('click', liClick);

function liClick(event) {
  if (event.target.tagName != 'LI') return;

  if (event.target.classList.contains('show')) {
    event.target.classList.remove('show');
  } else {
    event.target.classList.add('show');
  }
};

btnAddReply.addEventListener('click', function(){
    const replyUserName = document.querySelectorAll('replyUserName');
    const replyContent = document.getElementById('replyContent');
    const replyList = document.querySelector('.reply-list');
    const makeReply = document.createElement('p');
    let addReply = '';
  
    if (replyUserName.value == '') {
      alert('댓글 작성자를 입력해주세요.');
      replyUserName.focus();
    } else if (replyContent.value == '') {
      alert('댓글 내용을 입력해주세요.');
      replyContent.focus();
    } else {
      addReply = '<p class="reply">['
        + replyUserName
        + ']'
        +  replyContent
        + ' | '
        + fullDateTime
        + '</p>';
  
      makeReply.innerHTML = addReply;
      replyList.append(makeReply);
    }
  });

  list.addEventListener('click', liClick);
