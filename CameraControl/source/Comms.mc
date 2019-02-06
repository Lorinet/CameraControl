using Toybox.System;
using Toybox.Communications as Comm;
class Comms
{
	function send(message)
	{
		Comm.transmit(message, null, new ControlListener());
		//System.println(message);
	}
}
class ControlListener extends Comm.ConnectionListener
{
	function initialize()
	{
		Comm.ConnectionListener.initialize();
	}
	function onComplete(){}
	function onError(){}
}