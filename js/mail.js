function sendEmail(a, b, c, d)

				{

					MailWindow = window.open("mailto:" + basteln(a, b, c) + d);

					if(MailWindow != null)

					{

						MailWindow.close();

					}

				}

	

				function writeEmail(a, b, c)

				{

					document.write(basteln(a, b, c));

				}

	

				function setEmailStatus(a, b, c)

				{

					status = "mailto:"+basteln(a, b, c);

				}

	

				function basteln(a, b, c)

				{

					okvg = a;

					okvg += "@";

					okvg += b + "." + c;

					return okvg;

				}