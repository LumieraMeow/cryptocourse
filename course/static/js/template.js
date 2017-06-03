jQuery(document).ready(function($) {

	$(".headroom").headroom({
		"tolerance": 20,
		"offset": 50,
		"classes": {
			"initial": "animated",
			"pinned": "slideDown",
			"unpinned": "slideUp"
		}
	});
  
	 $("#task").on("keyup", function(e){
        e.preventDefault();
        var data = $(this).serialize();
        
        $.ajax({
          type: "POST",
          url: $(this).attr('action'),
          data: data,
          cache: false,
          success: function(data){
            if (data == 'ok'){
              $("#button-task").removeClass("disabled");
              $(".input-task").css({"border": "2px solid rgba(4, 249, 50, 0.31)", "background": "rgba(39, 255, 0, 0.11)"});
            }
            if (data == 'not ok'){
              $(".input-task").css({"border": "2px solid rgba(249, 4, 4, 0.31)", "background": "rgba(255, 119, 0, 0.14)"});
            }
          }
        });
    });
    
	
	$("#singin").submit( function(e){
	    
        e.preventDefault();
        var data = $(this).serialize();
        $.ajax({
            type: "POST",
            url: '/user/login/',
            data: data,
            cache: false,
            success: function(data){
                if (data == 'ok'){
                    document.location.href = window.urls['signin_success'];
                }
                if (data != 'ok'){
                    var errors = $.parseJSON(data);
                    for (var i = 0; i < errors.length; i++) {
                        $("#error-login").html(errors[i].desc);
                    }
                }
            }
       });
    });

    $("#signup").submit( function(e){
	    
        e.preventDefault();
        var data = $(this).serialize();
        // Generate URL without "id" bit
    var url = '/' + "{% url 'course:index' %}" + '/';
        $.ajax({
            type: "POST",
            url: '/user/register/',
            data: data,
            cache: false,
            success: function(data){
                if (data == 'ok'){
                    document.location.href = '/course/';
                }
                if (data != 'ok'){
                    //$('#error-login').html(data);
                    var errors = $.parseJSON(data);
                    for (var i = 0; i < errors.length; i++) {
                        $("#error-login").html(errors[i].desc);
                    }
                }
            }
       });
    });
    
    
    // TESTS
        var $tasks;
        var test_id = 8;
        /* запуск теста */
      function testRun(){
          $tasks = $('.test-task');
          
          $tasks.first().addClass('__active');
          
          toggleCheckButton($tasks.first());
          
          $('#tasks').submitForm({
            
            prepare: function(data){
              for (d in data) {
                if(typeof(data[d])=="object")
                  data[d] = data[d][0]
              }
              
              return {
                id: test_id,
                answers: JSON.stringify(data)
              }
            },
            success: function(response){
                
              $('.test-tasks').slideUp();
              
              $('.test-result').slideDown();
              
              return true;
            },
            responseElement: $('.test-result')
          });
          
        }
        
        function toggleSkipButton($task)
        {
          if ($task.is(':last-child'))
            $('#skip').hide()
        }
        
        function toggleCheckButton($task){
          $('#check').addClass('disabled');
  
          var $checks = $task.find('input[type=radio]');
          
          $checks.change(function(){
            var valid = false;
            
            $checks.each(function(idx, item){
              
              if (item.checked)
                valid = item.checked;
            });
            
            $('#check').toggleClass('disabled', !valid);
          });

          
        }
        
        function taskActive($task){
          $task.removeClass('__active');
          $task.next().addClass('__active');
          
          toggleCheckButton($task.next());
        }
        
        function taskCheck(){
          if ($(this).hasClass('disabled'))
           return false;
  
          var $current = $('.test-task.__active');
          if ($current.is(':last-child'))
          {
            $('#tasks').submit();
          }
          else
          {
            taskActive($current);
            
            toggleSkipButton($current.next());
          }
        }
        
        function taskSkip(){
          var $current = $('.test-task.__active');
          
          taskActive($current);
    
          toggleSkipButton($current.next());
          
          $current.find('input').each(function(idx, item){
            if (item.type == 'radio')
            
              $(item).attr('checked', false);
          });
          
          $('.test-tasks-wrapper').append($current.clone());
          $current.remove();
          
          $tasks = $('.test-task');
        }
        
        $('.test-run').on("click",function(){
          $.ajax({
            url: $(this).attr('action'),
            data: {
              id: test_id
            },
            beforeSend: function(){
              $('.test-wrapper').addClass('processing');
            },
            success: function(response){
              $('.test-wrapper').removeClass('processing');
              $('.test-wrapper').slideUp();
              
              $('.test-tasks-wrapper').html(response);
              testRun();
              
              $('.test-tasks').slideDown();
            }
          });
        });
        
        $('#skip').click(taskSkip);
        $('#check').click(taskCheck);
    
/*_____________КАЛЬКУЛЯТОР РСА______________*/
        function isEven(num) {
                if (num % 2 === 0) return true
                return false
            }
        //простое число или нет
        function isSimple(num) {
                var x;
                num = parseInt(num);
                if (num > 1 && num <= 3) return true
                if (String(num).substr(String(num).length - 1) === "0" || isEven(num) || num === 1 || num === 0) return false
                for (x = 3; x <= Math.sqrt(num); x++) {
                    if (num % x === 0) return false
                }
                return true;
            }
        $(".form-control").on("keyup", function(e){
          
                if(isSimple($(this).val())==true && isSimple($(this).val())!=''){
                  $(this).parent('.form-group').removeClass('has-error');
                  $(this).parent('.form-group').addClass('has-success');
                }
                else{
                  $(this).parent('.form-group').removeClass('has-success');
                  $(this).parent('.form-group').addClass('has-error');
                }
            });
        
        $(".key").click(function(e){
          if( isSimple($('input[name=p]').val()) && isSimple($('input[name=q]').val())){
            if($('input[name=p]').val() != "" && $('input[name=q]').val() != "")
              $('.btn').removeClass('disabled');
          }
          else{
             $('.btn').addClass('disabled');
          }
          });
            
        $(".key").submit(function(e){
          e.preventDefault();
          var data = $(this).serialize();
          $.ajax({
              type: "POST",
              url: '/rsa/',
              data: data,
              cache: false,
              success: function(data){
                $('input[name=n]').val(data.n);
                $('input[name=f]').val(data.f);
                $(".d_list").val(data.d_list);
              }
              });
         });
         
         $(".factoring").submit(function(e){
          e.preventDefault();
          var data = $(this).serialize();
          $.ajax({
              type: "POST",
              url: '/rsa/',
              data: data,
              cache: false,
              success: function(data){
                $(".data").text(data);

              }
              });
         });
         
         $(".gkey").submit(function(e){
          e.preventDefault();
          var data = $(this).serialize();
          $.ajax({
              type: "POST",
              url: '/rsa/',
              data: data,
              cache: false,
              success: function(data){
                if (data == "e и d могут быть компонентами ключа"){
                  var pub_key = "Открытый ключ: ("+$('input[name=e]').val()+";"+$('#n').val()+").";
                  var priv_key = "Закрытый ключ: ("+$('input[name=d]').val()+";"+$('#n').val()+").";
                  $(".public-key").text(pub_key);
                  $(".private-key").text(priv_key);
                  $('.error-key').css("display", "none");
                  $('.p-key').css("display", "block");
                  
                }
                if (data == "d и φ не взаимно просты"){
                  $('.p-key').css("display", "none");
                  $('.error-key').css("display", "block");
                  $(".error-key").text("Генерация ключей невозможна: d и φ не взаимно просты. Попробуйте другой параметр d.");
                }
                if (data == "e и φ не взаимно просты"){
                  $('.p-key').css("display", "none");
                  $('.error-key').css("display", "block");
                  $(".error-key").text("Генерация ключей невозможна: e и φ не взаимно просты. Попробуйте другой параметр e.");
                }
                if (data == "(e*d)mod φ != 1"){
                  $('.p-key').css("display", "none");
                  $('.error-key').css("display", "block");
                  $(".error-key").text("Генерация ключей невозможна: (e*d)mod φ не равно 1. Попробуйте другие параметры e и d.");
                }
              }
              });
         });

    function PowerMod(x,p,N)
		// Compute x^p mod N
		{
			var A = 1
			var m = p
			var t = x
			var k, r
			while( m > 0 )
			{
				k = Math.floor( m/2 )
				r = m - 2*k
				if( r == 1 )
					A = mod( A*t, N )
				t = mod( t*t, N )
				m = k
			}		
			return A
		}
	  
function mod( m, n )
		{			
			return m - n*Math.floor(m/n)
		}
	

    $(".encryption").submit(function(ev){
      
		  ev.preventDefault();
		  var val = $("input[type=submit][clicked=true]").val()
      var e = parseInt($('input[name=key_e]').val());
  		var d = parseInt($('input[name=key_d]').val());
  		var N = parseInt($('input[name=key_n]').val());
      
      if(val == "Зашифровать"){
        
  			var M = parseInt($('input[name=msg]').val());
  			$('input[name=cipher]').val(PowerMod(M,e,N));
  			$('input[name=cipher2]').val(PowerMod(M,e,N));
  			return ""
      }
			
			if(val == "Расшифровать"){
        
  			var C = $('input[name=cipher2]').val();
  			$('input[name=decipher]').val(PowerMod(C,d,N));
  			return ""
      }
		});
      
    $(".encryption input[type=submit]").click(function() {
    $("input[type=submit]", $(this).parents(".encryption")).removeAttr("clicked");
    $(this).attr("clicked", "true");
});   

/*__________________SDES_______________________*/

  $(".sdes-key").submit(function(ev){
		  ev.preventDefault();
		  var key = new Array(10);
		  
  		  key[0] = $('input[name="1"]').val();
  		  key[1] = $('input[name="2"]').val();
  		  key[2] = $('input[name="3"]').val();
  		  key[3] = $('input[name="4"]').val();
  		  key[4] = $('input[name="5"]').val();
  		  key[5] = $('input[name="6"]').val();
  		  key[6] = $('input[name="7"]').val();
  		  key[7] = $('input[name="8"]').val();
  		  key[8] = $('input[name="9"]').val();
  		  key[9] = $('input[name="10"]').val();
  		  
  		  if($('input[type=submit]').attr("id") == "step9"){
    		   for(var i = 0; i<key.length; i++){
    		     $("#step9_"+(1+i)).append(key[i]);
    		   }
    		   $('input[name="submit5"]').remove();
    		   
  		  }
  		  
  		  if($('input[type=submit]').attr("id") == "step8"){
    		   for(var i = 0; i<key.length; i++){
    		     $("#step8_"+(1+i)).append(key[i]);
    		   }
    		   $('input[name="submit4"]').remove();
  		     $('input[name="submit5"]').show();
  		     $('input[name="submit5"]').focus();
  		  }
  		  
  		  if($('input[type=submit]').attr("id") == "step7"){
    		   for(var i = 0; i<key.length; i++){
    		     $("#step7_"+(1+i)).append(key[i]);
    		   }
    		   $('input[name="submit4"]').attr("id", "step8");
    		   $('input[name="submit4"]').val("Перейти далее");
  		  }
  		  
  		  if($('input[type=submit]').attr("id") == "step6"){
    		   for(var i = 0; i<key.length; i++){
    		     $("#step6_"+(1+i)).append(key[i]);
    		   }
    		   $('input[name="submit3"]').remove();
  		     $('input[name="submit4"]').show();
  		     $('input[name="submit4"]').focus();
  		  }
  		  
  		  if($('input[type=submit]').attr("id") == "step5"){
  		   for(var i = 0; i<key.length; i++){
  		     $("#step5_"+(1+i)).append(key[i]);
  		   }
  		   $('input[name="submit3"]').attr("id", "step6");
  		   $('input[name="submit3"]').val("Перейти далее");
  		  }
        
        if($('input[type=submit]').attr("id") == "step4"){
  		   for(var i = 0; i<key.length; i++){
  		     $("#step4_"+(1+i)).append(key[i]);
  		   }
  		   $('input[name="submit2"]').remove();
  		   $('input[name="submit3"]').show();
  		   $('input[name="submit3"]').focus();
  		  }
        
        if($('input[type=submit]').attr("id") == "step3"){
  		   for(var i = 0; i<key.length; i++){
  		     $("#step3_"+(1+i)).append(key[i]);
  		   }
  		   $('input[name="submit2"]').attr("id", "step4");
  		   $('input[name="submit2"]').val("Перейти далее");
  		  }
        
        if($('input[type=submit]').attr("id") == "step2"){
  		   for(var i = 0; i<key.length; i++){
  		     $("#step2_"+(1+i)).append(key[i]);
  		   }
  		   $('input[name="submit1"]').remove();
  		   $('input[name="submit2"]').show();
  		   $('input[name="submit2"]').focus();
  		  }
  
  		  if($('input[type=submit]').attr("id") == "step1"){
  		   for(var i = 0; i<key.length; i++){
  		     $("#step1_"+(1+i)).append(key[i]);
  		   }
  		   $('input[name="submit1"]').attr("id", "step2");
  		   $('input[name="submit1"]').val("Перейти далее");
  		  }
      return ""
		
		});
		
		var S0 = [
              ["01", "00", "11", "10"],
              ["11", "10", "01", "00"],
              ["00", "10", "01", "11"],
              ["11", "01", "11", "10"]
            ];
    var S1 = [
              ["00", "01", "10", "11"],
              ["10", "00", "01", "11"],
              ["11", "00", "01", "00"],
              ["10", "01", "00", "11"]
            ];
    function MyXOR(a,b){
      var XOR = new Array(a.length)
      for(var k = 0; k<a.length; k++){
    		     XOR[k] =  (a[k] == b[k]) ? 0 : 1  ;
    		   }
    		   return XOR;
    }

    function BitToInt(a){
      var b = 0;
      for (var i=a.length-1; i>-1;i--)//    пошли по строке бит
            if (a[i]==1)   // если i-й бит в строке = 1 ,
              b+=Math.pow(2,1-i) ;// то прибавить к общей сумме 2 в степени i
      return b;
    }
    function Block(form){
      var text = new Array(8);
      if(form == ".sdes-enscription "){
  		  for (var i = 0; i < text.length; i++) {
  		    text[i] = $(form+'input[name="t'+(i+1)+'"]').val();
  		  }
      }
      if(form == ".sdes-enscription2 "){
  		  for (var i = 0; i < text.length; i++) {
  		    text[i] = $(form+'#text1_'+(i+1)).text();
  		  }
      }
		  if($(form+'input[type=submit]').attr("id") == "text8"){
		    if(form == ".sdes-enscription "){
		      var p = 0;
		      $(form+'.b').each( function () {
             $(".sdes-enscription2 .L"+(1+p)).append($(this).text());
             p++;
          });p=0;
          for(var i = 0; i<4; i++){
    		     $(".sdes-enscription2 .g"+(1+i)).append($(form+".xor"+(1+i)).text());
    		   }
          
		    }
		    $(form+'input[name="subtext3"]').remove();
		    if (form == '.sdes-enscription2 ') {
		      for(var i = 0; i<4; i++){
    		     $(".sdes-enscription3 #res1_"+(1+i)).append($(form+".xor"+(1+i)).text());
    		   }
    		   for(var i = 4; i<8; i++){
    		     $(".sdes-enscription3 #res1_"+(1+i)).append($(form+".g"+(i-3)).text());
    		   }
		      $('.sdes-enscription3 input[name="subtext1"]').show();
  		    $('.sdes-enscription3 input[name="subtext1"]').focus();
		    }
  		  $('.sdes-enscription2 input[name="subtext1"]').show();
  		  $('.sdes-enscription2 input[name="subtext1"]').focus();
		  }
      if($(form+'input[type=submit]').attr("id") == "text7"){
          var L1 = new Array(4); var P = new Array(4);
          var xor = new Array(4);
          for(var i = 0; i<L1.length; i++){
  		     L1[i] = $(form+".L"+(i+1)).text();
  		    }
  		    for(var i = 0; i<P.length; i++){
  		     P[i] = $(form+".P"+(i+1)).text();
  		    }
  		    xor = MyXOR(L1,P);
          for(var i = 0; i<xor.length; i++){
    		     $(form+".xor"+(1+i)).append(xor[i]);
    		   }
  		    $(form+'input[name="subtext3"]').attr("id", "text8");
  		    $(form+'input[name="subtext3"]').val("Перейти далее");
        }

        if($(form+'input[type=submit]').attr("id") == "text6"){
          for(var i = 0; i<2; i++){
  		     $(form+"#S12_"+(1+i)).append($(form+"#S1_"+(1+i)).text());
  		    }
  		    for(var i = 0; i<2; i++){
  		     $(form+"#S22_"+(1+i)).append($(form+"#S2_"+(1+i)).text());
  		    }
  		    $(form+'input[name="subtext3"]').attr("id", "text7");
        }
        if($(form+'input[type=submit]').attr("id") == "text5"){
          var rS0 = new Array(2); var rS1 = new Array(2);
          var cS0 = new Array(2); var cS1 = new Array(2);
          var p = 0;
//_________________ЛЕВЫЙ ПОЛУБИТ          
          $(form+'.S0').each( function () {
          rS0[p] = parseInt($(this).text());
            p++;
          });p=0;
          $(form+'.S1').each( function () {
            cS0[p] = parseInt($(this).text());
            p++;
          });p=0;
          
          $(form+"#S1_1").append(S0[BitToInt(rS0)][BitToInt(cS0)][0]);
          $(form+"#S1_2").append(S0[BitToInt(rS0)][BitToInt(cS0)][1]);
//_________________ ПРАВЫЙ ПОЛУБИТ          
          $(form+'.S2').each( function () {
          rS1[p] = parseInt($(this).text());
            p++;
          });p=0;
          $(form+'.S3').each( function () {
            cS1[p] = parseInt($(this).text());
            p++;
          });
 
          $(form+"#S2_1").append(S1[BitToInt(rS1)][BitToInt(cS1)][0]);
          $(form+"#S2_2").append(S1[BitToInt(rS1)][BitToInt(cS1)][1]);
          
          $(form+'input[name="subtext2"]').remove();
  		    $(form+'input[name="subtext3"]').show();
  		    $(form+'input[name="subtext3"]').focus();
  		  }
        
        if($(form+'input[type=submit]').attr("id") == "text4"){
          var k1 = new Array(8);
          var p_block = new Array(8);
          var xor = new Array(8);
          if(form == ".sdes-enscription "){
            for(var i = 0; i<k1.length; i++){
    		     k1[i] = parseInt($('.sdes-enscription input[name="k'+(i+1)+'"]').val());
    		   }
          }
          if(form == ".sdes-enscription2 "){
            for(var i = 0; i<k1.length; i++){
    		     k1[i] = parseInt($('.sdes-enscription input[name="k2'+(i+1)+'"]').val());
    		   }
          }
          
    		   var p = 0;
          $(form+'.p_block').each( function () {
            p_block[p] = parseInt($(this).text());
            p++;
          });
            xor = MyXOR(k1,p_block);

    		   for(var i = 0; i<xor.length; i++){
    		     $(form+"#xor4_"+(1+i)).append(xor[i]);
    		   }
    		   $(form+'input[name="subtext2"]').attr("id", "text5");
    		   $(form+'input[name="subtext2"]').val("Перейти далее");
  		  }
  		  
        if($(form+'input[type=submit]').attr("id") == "text3"){
    		   for(var i = 0; i<text.length; i++){
    		     $(form+"#text3_"+(1+i)).append(text[i]);
    		   }
    		   for(var i = 0; i<text.length; i++){
    		     $(form+"#text31_"+(1+i)).append(text[i]);
    		   }
    		   $(form+'input[name="subtext2"]').attr("id", "text4");
  		  }
  		  
  		  if($(form+'input[type=submit]').attr("id") == "text2"){
  		    
    		   for(var i = 0; i<text.length; i++){
    		     $(form+"#text2_"+(1+i)).append(text[i]);
    		   }
    		   $(form+'input[name="subtext1"]').remove();
  		     $(form+'input[name="subtext2"]').show();
  		     $(form+'input[name="subtext2"]').focus();
  		  }

  		  if($(form+'input[type=submit]').attr("id") == "text1"){
    		   for(var i = 0; i<text.length; i++){
    		     $(form+"#text1_"+(1+i)).append(text[i]);
    		   }
    		   $(form+'input[name="subtext1"]').attr("id", "text2");
    		   $(form+'input[name="subtext1"]').val("Перейти далее");
  		  }
  		  return ""
    }
		$(".sdes-enscription").submit(function(ev){
		  ev.preventDefault();
		  Block(".sdes-enscription ");
  		return ""
		});
  
    $(".sdes-enscription2").submit(function(ev){
		  ev.preventDefault();
		  Block(".sdes-enscription2 ");
  		return ""
		}); 
		
		$(".sdes-enscription3").submit(function(ev){
		  ev.preventDefault();
		  var text = new Array(8);
  		  for (var i = 0; i < text.length; i++) {
  		    text[i] = $("#res1_"+(i+1)).text();
  		  }
		  for(var i = 0; i<text.length; i++){
    		     $("#res2_"+(1+i)).append(text[i]);
    		   }
    	$('input[type=submit]').remove();
  		return ""
		}); 
});
