$(function(){
	var $data = {
		name:'sohag',
		age: 25,
	}
	$.ajax({
		type:'POST',
		url:'http://localhost/mvc9/public/sales0/',
		//data:$data,
		success(data){
			console.log(data);
		},
		error(data){
			console.log(data);
		}
	});
})