
#
# Load async.
#
((d, s, id) ->
  js = undefined
  fjs = d.getElementsByTagName(s)[0]
  if d.getElementById(id)
    return
  js = d.createElement(s)
  js.id = id
  js.src = '//connect.facebook.net/en_US/sdk.js'
  fjs.parentNode.insertBefore js, fjs
  return
) document, 'script', 'facebook-jssdk'


# Main callback.
testAPI = ->
  FB.api '/me?fields=first_name,last_name,email', (response) ->
    console.log response
    # profileUrl = "https://graph.facebook.com/#{response.id}/picture?type=large"
    # console.log(profileUrl)

    $.post(
      '/users/create-or-login',
      response,
      (data) ->
        console.log data
    )

#
# This is called with the results from from FB.getLoginStatus().
#
statusChangeCallback = (response) ->
  console.log response
  if response.status == 'connected'
    testAPI()
  else if response.status == 'not_authorized'
    document.getElementById('status').innerHTML = 'Please log ' + 'into this app.'
  else
    document.getElementById('status').innerHTML = 'Please log ' + 'into Facebook.'


# This function is called when someone finishes with the Login
# Button.  See the onlogin handler attached to it in the sample
# code below.
window.checkLoginState = ->
  FB.getLoginStatus (response) ->
    statusChangeCallback response
    return


#
# Async init
#
window.fbAsyncInit = ->
  FB.init
    appId: '908298645886291'
    cookie: true
    xfbml: true
    version: 'v2.2'
  return

  FB.getLoginStatus (response) ->
    statusChangeCallback response
    return

((d, s, id) ->
  js = undefined
  fjs = d.getElementsByTagName(s)[0]
  if d.getElementById(id)
    return
  js = d.createElement(s)
  js.id = id
  js.src = '//connect.facebook.net/en_US/sdk.js'
  fjs.parentNode.insertBefore js, fjs
  return
) document, 'script', 'facebook-jssdk'


