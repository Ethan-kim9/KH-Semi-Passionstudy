 $('#btnRoomEdit1').on('click', function(){
	  var value = $('input:checkbox[id="Black"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.ProductEdit',
			<%if(!list.isEmpty()){%>
			data : {memno 	  : "<%=list.get(0).getRoomNo()%>",
					memStatus : value},
			
			success  : function(){
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});
  $('#btnRoomEdit2').on('click', function(){
	  var value = $('input:checkbox[id="Black"]').is(":checked");
		$.ajax({
			type : 'post',
			url  : 'manager.ProductEdit',
			<%if(!list.isEmpty()){%>
			data : {memno 	  : "<%=list.get(1).getRoomNo()%>",
					memStatus : value},
			
			success  : function(){
				location.href="manager.ProductSearch";
				<%}%>
			},
			error    : function(){
				alert(status);
			}  		
		});
	});  $('#btnRoomEdit3').on('click', function(){
		  var value = $('input:checkbox[id="Black"]').is(":checked");
			$.ajax({
				type : 'post',
				url  : 'manager.ProductEdit',
				<%if(!list.isEmpty()){%>
				data : {memno 	  : "<%=list.get(2).getRoomNo()%>",
						memStatus : value},
				
				success  : function(){
					location.href="manager.ProductSearch";
					<%}%>
				},
				error    : function(){
					alert(status);
				}  		
			});
		});  $('#btnRoomEdit4').on('click', function(){
			  var value = $('input:checkbox[id="Black"]').is(":checked");
				$.ajax({
					type : 'post',
					url  : 'manager.ProductEdit',
					<%if(!list.isEmpty()){%>
					data : {memno 	  : "<%=list.get(3).getRoomNo()%>",
							memStatus : value},
					
					success  : function(){
						location.href="manager.ProductSearch";
						<%}%>
					},
					error    : function(){
						alert(status);
					}  		
				});
			});  $('#btnRoomEdit5').on('click', function(){
				  var value = $('input:checkbox[id="Black"]').is(":checked");
					$.ajax({
						type : 'post',
						url  : 'manager.ProductEdit',
						<%if(!list.isEmpty()){%>
						data : {memno 	  : "<%=list.get(4).getRoomNo()%>",
								memStatus : value},
						
						success  : function(){
							location.href="manager.ProductSearch";
							<%}%>
						},
						error    : function(){
							alert(status);
						}  		
					});
				});  $('#btnRoomEdit6').on('click', function(){
					  var value = $('input:checkbox[id="Black"]').is(":checked");
						$.ajax({
							type : 'post',
							url  : 'manager.ProductEdit',
							<%if(!list.isEmpty()){%>
							data : {memno 	  : "<%=list.get(5).getRoomNo()%>",
									memStatus : value},
							
							success  : function(){
								location.href="manager.ProductSearch";
								<%}%>
							},
							error    : function(){
								alert(status);
							}  		
						});
					});  $('#btnRoomEdit7').on('click', function(){
						  var value = $('input:checkbox[id="Black"]').is(":checked");
							$.ajax({
								type : 'post',
								url  : 'manager.ProductEdit',
								<%if(!list.isEmpty()){%>
								data : {memno 	  : "<%=list.get(6).getRoomNo()%>",
										memStatus : value},
								
								success  : function(){
									location.href="manager.ProductSearch";
									<%}%>
								},
								error    : function(){
									alert(status);
								}  		
							});
						});  $('#btnRoomEdit8').on('click', function(){
							  var value = $('input:checkbox[id="Black"]').is(":checked");
								$.ajax({
									type : 'post',
									url  : 'manager.ProductEdit',
									<%if(!list.isEmpty()){%>
									data : {memno 	  : "<%=list.get(7).getRoomNo()%>",
											memStatus : value},
									
									success  : function(){
										location.href="manager.ProductSearch";
										<%}%>
									},
									error    : function(){
										alert(status);
									}  		
								});
							}); 
						  $('#btnRoomEdit9').on('click', function(){
							  var value = $('input:checkbox[id="Black"]').is(":checked");
								$.ajax({
									type : 'post',
									url  : 'manager.ProductEdit',
									<%if(!list.isEmpty()){%>
									data : {memno 	  : "<%=list.get(8).getRoomNo()%>",
											memStatus : value},
									
									success  : function(){
										location.href="manager.ProductSearch";
										<%}%>
									},
									error    : function(){
										alert(status);
									}  		
								});
							});