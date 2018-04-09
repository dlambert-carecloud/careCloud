// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .


// Initialize the Amazon Cognito credentials provider
// AWS.config.region = 'us-east-2'; // Region
// AWS.config.credentials = new AWS.CognitoIdentityCredentials({
//     IdentityPoolId: 'us-east-2:265759de-d494-402b-994c-5193932e051f',
// });


// function onLoad() {
// 		var i, items, tabs;
// 		items = document.getElementsByClassName("tab-pane");
// 		for (i = 0; i < items.length; i++) {
// 			items[i].style.display = 'none';
// 		}
// 		document.getElementById("statusNotAuth").style.display = 'block';
// 		document.getElementById("statusAuth").style.display = 'none';
// 		// Initiatlize CognitoAuth object
// 		var auth = initCognitoSDK();
//
// 		document.getElementById("signInButton").addEventListener("click", function() {
// 			userButton(auth);
// 		});
//
// 		var curUrl = window.location.href;
// 		auth.parseCognitoWebResponse(curUrl);
// }
//
//   // Operation when tab is closed.
// 	function closeTab(tabName) {
// 	  document.getElementById(tabName).style.display = 'none';
// 	}
//   // Operation when tab is opened.
//   function openTab(tabName) {
// 		document.getElementById(tabName).style.display = 'block';
// 	}
//   // Operations about toggle tab.
// 	function toggleTab(tabName) {
// 		if (document.getElementById("usertab").style.display == 'none') {
// 			document.getElementById("usertab").style.display = 'block';
// 			document.getElementById("tabIcon").innerHTML = '_';
// 		} else {
// 			document.getElementById("usertab").style.display = 'none';
// 			document.getElementById("tabIcon").innerHTML = '+';
// 		}
// 	}
//
//   // Operations when showing message.
// 	function showMessage(msgTitle, msgText, msgDetail) {
// 		var msgTab = document.getElementById('message');
// 		document.getElementById('messageTitle').innerHTML = msgTitle;
// 		document.getElementById('messageText').innerHTML = msgText;
// 		document.getElementById('messageDetail').innerHTML = msgDetail;
// 		msgTab.style.display = "block";
// 	}
//
//   // Perform user operations.
// 	function userButton(auth) {
// 		var state = document.getElementById('signInButton').innerHTML;
// 		if (state === "Sign Out") {
// 			document.getElementById("signInButton").innerHTML = "Sign In";
// 			auth.signOut();
// 			showSignedOut();
// 		} else {
// 			auth.getSession();
// 		}
// 	}
//
// 	// Operations when signed in.
//   function showSignedIn(session) {
// 		document.getElementById("statusNotAuth").style.display = 'none';
// 		document.getElementById("statusAuth").style.display = 'block';
// 		document.getElementById("signInButton").innerHTML = "Sign Out";
// 		if (session) {
// 			var idToken = session.getIdToken().getJwtToken();
// 			if (idToken) {
// 				var payload = idToken.split('.')[1];
// 				var tokenobj = JSON.parse(atob(payload));
// 				var formatted = JSON.stringify(tokenobj, undefined, 2);
// 				document.getElementById('idtoken').innerHTML = formatted;
// 			}
// 			var accToken = session.getAccessToken().getJwtToken();
// 			if (accToken) {
// 				var payload = accToken.split('.')[1];
// 				var tokenobj = JSON.parse(atob(payload));
// 				var formatted = JSON.stringify(tokenobj, undefined, 2);
// 				document.getElementById('acctoken').innerHTML = formatted;
// 			}
// 			var refToken = session.getRefreshToken().getToken();
// 			if (refToken) {
// 				document.getElementById('reftoken').innerHTML = refToken.substring(1, 20);
// 			}
// 		}
// 		openTab("userdetails");
// 	}
// 	// Operations when signed out.
// 	function showSignedOut() {
// 		document.getElementById("statusNotAuth").style.display = 'block';
// 		document.getElementById("statusAuth").style.display = 'none';
// 		document.getElementById('idtoken').innerHTML = " ... ";
// 		document.getElementById('acctoken').innerHTML = " ... ";
// 		document.getElementById('reftoken').innerHTML = " ... ";
// 		closeTab("userdetails");
// 	}
//
//   // Initialize a cognito auth object.
// 	function initCognitoSDK() {
//
// 		// Initialize the Amazon Cognito credentials provider
// 		// AWS.config.region = 'us-east-2'; // Region
// 		// AWS.config.credentials = new AWS.CognitoIdentityCredentials({
// 		//     IdentityPoolId: 'us-east-2:265759de-d494-402b-994c-5193932e051f',
// 		// });// Initialize the Amazon Cognito credentials provider
// 		// AWS.config.region = 'us-east-2'; // Region
// 		// AWS.config.credentials = new AWS.CognitoIdentityCredentials({
// 		//     IdentityPoolId: 'us-east-2:265759de-d494-402b-994c-5193932e051f',
// 		// });
//
//
// 		var authData = {
// 			ClientId : '<TODO: your app client ID here>', // Your client id here
// 			AppWebDomain : '<TODO: your app web domain here>', // Exclude the "https://" part.
// 			TokenScopesArray : ['email'], // like ['openid','email','phone']...
// 			// RedirectUriSignIn : '<TODO: your redirect url when signed in here>',
// 			// RedirectUriSignOut : '<TODO: your redirect url when signed out here>',
//
// 			IdentityProvider : 'facebook',
// 	                UserPoolId : 'us-east-2:265759de-d494-402b-994c-5193932e051f',
// 	                AdvancedSecurityDataCollectionFlag : false
// 		};
// 		var auth = new AmazonCognitoIdentity.CognitoAuth(authData);
// 		// You can also set state parameter
// 		// auth.setState(<state parameter>);
// 		auth.userhandler = {
// 			onSuccess: <: your onSuccess callback here>,
// 			onFailure: <: your onFailure callback here>
// 			/** E.g.
// 			onSuccess: function(result) {
// 				alert("Sign in success");
// 				showSignedIn(result);
// 			},
// 			onFailure: function(err) {
// 				alert("Error!" + err);
// 			}*/
// 		};
// 		// The default response_type is "token", uncomment the next line will make it be "code".
// 		// auth.useCodeGrantFlow();
// 		return auth;
// 	}
