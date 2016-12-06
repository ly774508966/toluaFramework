local class = require 'middleclass'

Observer = class('Observer')

Observer.static.MULTITON_MSG = "multitonKey for this Observer not yet initialized!";

function Observer:initialize(notifyMethod, notifyContext)
	self.notifyMethod = notifyMethod
	self.notifyContext = notifyContext
end

function Observer:SetNotifyMethod(notifyMethod)
	self.notifyMethod = notifyMethod
end

function Observer:SetNotifyContext(notifyContext)
	self.notifyContext = notifyContext
end

function Observer:GetNotifyMethod()
	return self.notifyMethod
end

function Observer:GetNotifyContext()
	return self.notifyContext
end

function Observer:NotifyObserver(notification)
  self.notifyMethod(self.notifyContext, notification)
end

function Observer:CompareNotifyContext(object)
	return object == self.notifyContext
end