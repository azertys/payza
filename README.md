<h1>Payza</h1>

Payza allows to connect your Ruby on Rails application to the Payza API.

<h2>Installation</h2>
<pre>
  $ sudo gem install payza
</pre>

Payza needs an payza.yml file in your config directory (Rails App).

<pre>
# All those fields are mandatory  

sandbox:
  url:  "https://sandbox.payza.com/api/api.svc/"
  user: "you_username@email.com"
  pass: "password_here"

live:
  url:  "https://api.payza.com/svc/api.svc/"
  user: "you_username@email.com"
  pass: "password_here"
</pre>  
<h2>Example usage</h2>
<pre>
#This example is for the mass pay api.

p = Payza.new(true) # true mean "use sandbox"
data = {
      :currency => "USD",
      :testmode => "1",
      :receiveremail_1 => "client_1_test@email.com",
      :amount_1 => 20,
      :note_1 => "A new customer" #this is optional
  }

#The second argument is the API method. To see all methods check the Payza API https://dev.payza.com/integration-tools/api/

result = p.call_payza(data,"executemasspay") # will return a hash
</pre>