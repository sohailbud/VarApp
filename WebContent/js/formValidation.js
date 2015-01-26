$(function(){

	$('.ui.form')
	  .form({
	    firstName: {
	      identifier  : 'first-name',
	      rules: [
	        {
	          type   : 'empty',
	          prompt : 'Please enter your first name'
	        }
	      ]
	    },
	    lastName: {
	      identifier  : 'last-name',
	      rules: [
	        {
	          type   : 'empty',
	          prompt : 'Please enter your last name'
	        }
	      ]
	    },
	    username: {
	      identifier : 'username',
	      rules: [
	        {type   : 'empty', prompt : 'Please enter an User Name'},
	        {type   : 'email', prompt : 'Please use your email for User Name'}
	      ]
	    },
	    password: {
	      identifier : 'password',
	      rules: [
	        {
	          type   : 'empty',
	          prompt : 'Please enter a Password'
	        },
	        {
	          type   : 'length[6]',
	          prompt : 'Your password must be at least 6 characters'
	        }
	      ]
	    },
	    accessKey: {
		      identifier : 'access-key',
		      rules: [
		        {
		          type   : 'empty',
		          prompt : 'Please enter an Access Key'
		        }
		      ]
		    },
	    terms: {
	      identifier : 'terms',
	      rules: [
	        {
	          type   : 'checked',
	          prompt : 'You must agree to the terms and conditions'
	        }
	      ]
	    }
	  });
	
});