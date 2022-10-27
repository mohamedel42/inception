const ampq = require("amqplib/callback_api")

ampq.connect('amqp://localhost', (err, connection) => {

	if (err) {
		console.log("Error bro ", err)
		return ;
	}

	console.log("Logged..")

	connection.createChannel((err, chan) => {
	
		if (err) {
			console.log("Erro bro ", err)
			return ;
		}

		let name = "42school"

		chan.assertQueue(name, { durable: false })

		chan.consume(name, (msg) => {

			console.log("Received: ", msg.content.toString())

			

		})
	})


})