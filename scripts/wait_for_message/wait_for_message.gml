/// @argument message_expected
/// @argument maxtimes
/// @argument specificUsers
/// @argument whenReceivingOneFunction
/// @argument whenDoneFunction
function wait_for_message(){
	var message_expected = argument0
	var maxtimes = argument1
	var specificUsers = argument2
	var whenReceivingOneFunction = argument3
	var whenDoneFunction = argument4
	
	var promise = instance_create_layer(x, y, "Instances", oTwitch_wait_for_message_promise)
	promise.message_expected = message_expected
	promise.specificUsers = specificUsers
	promise.whenReceivingOneFunction = whenReceivingOneFunction
	promise.whenDoneFunction = whenDoneFunction
	promise.maxtimes = maxtimes
	
	console_log("Running promise of " + message_expected)
	
	return promise
	
	
}